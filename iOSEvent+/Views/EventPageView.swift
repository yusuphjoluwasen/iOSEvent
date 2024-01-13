//
//  EventPageView.swift
//  iOSEvent+
//
//  Created by Guru King on 02/03/2023.
//

import SwiftUI
import EventKit

struct EventPageView: View {
    @EnvironmentObject var model:EventViewModel
    @State var successAlert:Bool = false
    @State var errorAlert = false
    var body: some View {
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading){
                    Text("These are selected iOS events from around the world that have been compiled by Luis Ascorbe and can be found in his repository at https://github.com/Lascorbe/CocoaConferences.")
                        .foregroundColor(.primary)
                        .font(.caption)
                        .padding(.bottom)
                    ForEach(model.events) { event in
                        Button {
                            openApp(url: event.link ?? "")
                        } label: {
                            VStack{
                                HStack{
                                    VStack{
                                        Text(event.name ?? "")
                                            .font(Font.title2.bold())
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                           
                                        Text("Location: \(event.location ?? "")")
                                            .font(Font.subheadline.italic())
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            
                                        Text("\(event.startDate) to \(event.endDate)")
                                            .font(Font.callout)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    }
                                    
                                    Spacer()
                                    
                                    HStack{
                                        Button {
                                            addToCalendar(startDate: event.startDate, endDate: event.endDate, title: event.name ?? "", location: event.location ?? "")
                                        } label: {
                                            Image(systemName: "calendar.badge.plus")
                                        }
                                        
                                        ShareLink(item: (URL(string: event.link ?? "") ?? URL(string: "https://swiftleeds.co.uk/"))!, subject: Text("Check out this event: \(event.name ?? "")"), message: Text("Taking place on \(event.startDate.toDate()) at \(event.location ?? "")")) {
                                            Image(systemName: "square.and.arrow.up")
                                                .padding(.leading, 5)
                                        }
                                       
                                    }
                                }
                                Divider()
                            }
                            .padding(.bottom)
                        }
                    }
                }
            }
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity, alignment: .leading)
            .alert(isPresented: $errorAlert) { // 4
                Alert(
                    title: Text("An error occured")
                )
            }
            .padding()
            .alert(isPresented: $successAlert) { // 4
                Alert(
                    title: Text("Successfully added to your calendar")
                )
            }
            .onAppear{
                fetch()
            }
    }
    
    func fetch(){
        model.fetchEvents()
    }
    
    func addToCalendar(startDate:String, endDate:String, title:String, location:String){
        addEventToCalendar(title: title, description: "iOS Event at \(location)", startDate: startDate.toDate(), endDate: endDate.toDate()) { success, error in
            if success{
                successAlert = true
            }
            
            if let _ = error{
                errorAlert = true
            }
        }
    }
}

struct EventPageView_Previews: PreviewProvider {
    static var previews: some View {
        EventPageView()
            .environmentObject(EventViewModel(eventRepo: EventRepo()))
    }
}

func addEventToCalendar(title: String, description: String?, startDate: Date, endDate: Date, completion: ((_ success: Bool, _ error: NSError?) -> Void)? = nil) {
        DispatchQueue.global(qos: .background).async { () -> Void in
            let eventStore = EKEventStore()

            eventStore.requestAccess(to: .event, completion: { (granted, error) in
                if (granted) && (error == nil) {
                    let event = EKEvent(eventStore: eventStore)
                    event.title = title
                    event.startDate = startDate
                    event.endDate = endDate
                    event.notes = description
                    event.calendar = eventStore.defaultCalendarForNewEvents
                    do {
                        try eventStore.save(event, span: .thisEvent)
                    } catch let e as NSError {
                        completion?(false, e)
                        return
                    }
                    completion?(true, nil)
                } else {
                    completion?(false, error as NSError?)
                }
            })
        }
    }
