//
//  YoutubeLinks.swift
//  iOSEvent+
//
//  Created by Guru King on 03/03/2023.
//

import SwiftUI

struct YoutubeLinks: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading){
                    Text("Expressing gratitude to the heroes who generously share their expertise through excellent YouTube tutorials to facilitate the community's growth and development.")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.caption)
                        .padding(.bottom)
                    
                        ForEach(getYoutubeLinks()) { resource in
                            Button {
                                openApp(url: resource.link)
                            } label: {
                                VStack{
                                    HStack{
                                        VStack{
                                            Text(resource.name)
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .padding(.bottom, 1)
                                            
                                            Text("by \(resource.author)")
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .font(Font.footnote.bold())
                                                .padding(.bottom, 5)
                                            
                                            
                                        }
                                        
                                        Image(systemName: "arrow.forward")
                                            .foregroundColor(.gray)
                                    }
                                    
                                    Divider()
                                }
                            }
                        }
                }
            }
            .padding(.horizontal)
            .navigationTitle("Youtube Links")
            .navigationBarTitleDisplayMode(.large)
            .foregroundColor(.primary)
        }
    }
}

struct YoutubeLinks_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeLinks()
    }
}


func getYoutubeLinks() -> [ResourceIOSTwo]{
    return [
        ResourceIOSTwo(name: "@twostraws", author: "Paul Hudson", link: "https://lnkd.in/ewgnkRVj"),
        ResourceIOSTwo(name: "@Kavsoft", author: "Balaji Venkatesh", link: "https://lnkd.in/e4CanaEg"),
        ResourceIOSTwo(name: "@tundsdev", author: "Tunde Adegoroye", link: "https://youtube.com/tundsdev"),
        ResourceIOSTwo(name: "@EssentialDeveloper", author: "Caio Zullo", link: "https://www.youtube.com/@EssentialDeveloper"),
        ResourceIOSTwo(name: "@Archetapp", author: "Jared Davidson", link: "https://lnkd.in/ei5TYY-Y"),
        ResourceIOSTwo(name: "@MikaelaCaron", author: "Mikaela Caron", link: "https://lnkd.in/e-tKTysq"),
        ResourceIOSTwo(name: "@iosmayank", author: "Mayank Gupta", link: "https://lnkd.in/ezNJfMjd"),
        ResourceIOSTwo(name: "@seanallen", author: "Sean Allen", link: "https://lnkd.in/eX-g-TVp"),
        ResourceIOSTwo(name: "@CodeCat15", author: "Ravi", link: "https://lnkd.in/ejYQ75Ex"),
        ResourceIOSTwo(name: "@iOSAcademy", author: "Afraz Siddiqui", link: "https://lnkd.in/eprK_z7f"),
        ResourceIOSTwo(name: "@bigmtnstudio", author: "Mark Moeykens", link: "https://lnkd.in/ePahxDPf"),
        ResourceIOSTwo(name: "@StewartLynch", author: "Stewart Lynch", link: "https://lnkd.in/eutGe3Pv"),
        ResourceIOSTwo(name: "@SwiftyPlace", author: "Karin Prater", link: "https://lnkd.in/e3sfVEEj"),
        ResourceIOSTwo(name: "@v_pradeilles", author: "Vincent Pradeilles", link: "https://lnkd.in/eG2HxHvJ"),
        ResourceIOSTwo(name: "@LetsBuildThatApp", author: "Brian Voong", link: "https://lnkd.in/esiVUF_Z"),
        ResourceIOSTwo(name: "@DesignCodeTeam", author: "DesignCode", link: "https://www.youtube.com/@DesignCodeTeam"),
        ResourceIOSTwo(name: "@EmmanuelOkwara", author: "Emmanuel Okwara", link: "https://www.youtube.com/@EmmanuelOkwara"),
        ResourceIOSTwo(name: "@StewartLynch", author: "Stewart Lynch", link: "https://www.youtube.com/StewartLynch"),
        
    ]
}



