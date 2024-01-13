//
//  MainPageView.swift
//  iOSEvent+
//
//  Created by Guru King on 02/03/2023.
//

import SwiftUI

struct MainPageView: View {
    @State var navTitle:String = "Events"
    var body: some View {
        VStack{
            NavigationStack{
                TabView(selection: $navTitle) {
                    EventPageView()
                        .tabItem {
                            Label("Events", systemImage: "list.dash")
                        }
                        .tag("Events")
                    
                    iOSResources()
                        .tabItem {
                            Label("Resources", systemImage: "square.and.pencil")
                        }
                        .tag("Resources")
                    
                    JobsView()
                        .tabItem {
                            Label("Jobs", systemImage: "bag.badge.plus")
                        }
                        .tag("iOS Jobs")
                }
               
                .navigationBarTitleDisplayMode(.large)
                .navigationTitle(navTitle)
                .navigationBarBackButtonHidden(true)
                
            }
        }
    }
}

struct MainPageView_Previews: PreviewProvider {
    static var previews: some View {
        MainPageView()
            .environmentObject(EventViewModel(eventRepo: EventRepo()))
    }
}
