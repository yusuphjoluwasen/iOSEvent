//
//  iOSGeneral.swift
//  iOSEvent+
//
//  Created by Guru King on 03/03/2023.
//

import SwiftUI

struct iOSGeneral: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading){
                    
                    Text("These resources have proven to be extremely valuable in leveling up my rank as an iOS Developer, and I highly recommend them")
                        .font(.caption)
                        .padding(.bottom)
                    
                    VStack{
                        ForEach(generalResourceList()) { course in
                            Link(destination: URL(string: "\(course.link)")!) {
                                VStack{
                                    Text(course.name)
                                        .font(Font.title3)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("by \(course.author)")
                                        .font(Font.footnote.bold())
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Divider()
                                }
                                .padding(.bottom)
                            }
                        }
                        Spacer()
                    }
                 
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .navigationTitle("General")
                .navigationBarTitleDisplayMode(.large)
                .foregroundColor(.primary)
            }
        }
    }
}

struct iOSGeneral_Previews: PreviewProvider {
    static var previews: some View {
        iOSGeneral()
    }
}


func generalResourceList() -> [ResourceIOSTwo]{
    return [
        ResourceIOSTwo(name: "The Official Kodeco Swift Style Guide", author: "Kodeco", link: "https://github.com/kodecocodes/swift-style-guide")
       ]
}
