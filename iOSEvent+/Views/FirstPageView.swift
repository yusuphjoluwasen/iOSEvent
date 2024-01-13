//
//  FirstPageView.swift
//  iOSEvent+
//
//  Created by Guru King on 02/03/2023.
//

import SwiftUI

struct FirstPageView: View {
    let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    @State var moveToNextPage:Bool = false
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    NavigationLink("", destination: MainPageView(), isActive: $moveToNextPage)
                    VStack{
                        Image("developerimg")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(20)
                            .background(Color.white)
                            .clipShape(Circle())
                        
                        Text("IOS Events+")
                            .font(Font.title.bold())
                            .padding(.bottom,10)
                        
                        
                        Text("Made for iOS Developers")
                        
                        
                    }
                    .padding(.bottom, 40)
                }
                VStack{
                    Text("Promoting the Community")
                        .frame(maxHeight: .infinity, alignment: .bottom)
                        .padding(.bottom, 60)
                        .font(.caption)
                        
                }
              
            }
            .frame(width: getScreenSize().width, height: getScreenSize().height, alignment: .center)
         
            .background(Color.black)
            .foregroundColor(.white)
            .ignoresSafeArea()
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
            .onReceive(timer) { input in
                moveToNextPage = true
            }
        }
    }
}

struct FirstPageView_Previews: PreviewProvider {
    static var previews: some View {
        FirstPageView()
            .environmentObject(EventViewModel(eventRepo: EventRepo()))
    }
}
