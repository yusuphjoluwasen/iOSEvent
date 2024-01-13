//
//  iOSresources.swift
//  iOSEvent+
//
//  Created by Guru King on 02/03/2023.
//

import SwiftUI

struct iOSResources: View {
    var body: some View {
        VStack{
            VStack{
                Text("A collection of carefully selected resources for iOS developers at various levels, including junior, intermediate, and advanced developers")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    .padding(.bottom)
                    .font(.caption)
                ForEach(getUsefulResources()) { job in
                    VStack{
                        HStack{
                            NavigationLink(job.name) {
                                switch job.id{
                                case "1":
                                    MediumView()
                                case "2":
                                    YoutubeLinks()
                                case "3":
                                    iOSCourses()
                                case "4":
                                    iOSDSA()
                                case "5":
                                    iOSBooks()
                                case "6":
                                    iOSDesignPattern()
                                case "7":
                                    iOSBlogs()
                                case "8":
                                    iOSGeneral()
                                default:
                                    Text("ssj")
                                }
                            }
                            
                            Spacer()
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(.gray)
                        }
                        Divider()
                    }
                    
                }
                .padding(.horizontal)
                .padding(.bottom, 5)
                
                Spacer()
            }
        }
        .foregroundColor(.primary)
        
    }
}

struct iOSresources_Previews: PreviewProvider {
    static var previews: some View {
        iOSResources()
    }
}

func getUsefulResources() -> [ResourceIOS]{
    return [
        ResourceIOS(id:"1", name: "Medium Articles", link: "https://www.linkedin.com/jobs/search/?currentJobId=3496220769&f_JT=F&geoId=102257491&keywords=ios%20developer&location=London&refresh=true"),
        ResourceIOS(id:"2", name: "Youtube Channels", link: "https://www.glassdoor.co.uk/Job/ios-developer-jobs-SRCH_KO0,13.htm"),
        ResourceIOS(id:"3", name: "Courses", link: "https://www.glassdoor.co.uk/Job/ios-developer-jobs-SRCH_KO0,13.htm"),
        ResourceIOS(id:"4", name: "Data Structure and Algorithm", link: "https://www.glassdoor.co.uk/Job/ios-developer-jobs-SRCH_KO0,13.htm"),
        ResourceIOS(id:"5", name: "Books", link: "https://uk.indeed.com/Ios-Developer-jobs?vjk=cf862bd1aa8cb8c9"),
        ResourceIOS(id:"6", name: "Design Pattern", link: "https://uk.indeed.com/Ios-Developer-jobs?vjk=cf862bd1aa8cb8c9"),
        ResourceIOS(id:"7", name: "Blogs", link: "https://uk.indeed.com/Ios-Developer-jobs?vjk=cf862bd1aa8cb8c9"),
        ResourceIOS(id:"8", name: "General", link: "https://uk.indeed.com/Ios-Developer-jobs?vjk=cf862bd1aa8cb8c9")
    ]
}




