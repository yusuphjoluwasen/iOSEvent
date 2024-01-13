//
//  JobsView.swift
//  iOSEvent+
//
//  Created by Guru King on 02/03/2023.
//

import SwiftUI

struct JobsView: View {
    var body: some View {
                VStack{
                    ForEach(getJobs()) { job in
                        Button {
                            openApp(url: job.link)
                        } label: {
                            VStack{
                                HStack{
                                    Text(job.name)
                                     
                                    Spacer()
                                    
                                    Image(systemName: "arrow.right")
                                    
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Divider()
                            }
                            .padding(.bottom)
                        }
                        
                    }
                    Spacer()
                }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            .foregroundColor(.primary)
    }
}

struct JobsView_Previews: PreviewProvider {
    static var previews: some View {
        JobsView()
    }
}

func getJobs() -> [Job]{
    return [
        Job(name: "Linkedin", link: "https://www.linkedin.com/jobs/search/?currentJobId=3496220769&f_JT=F&geoId=102257491&keywords=ios%20developer&location=London&refresh=true"),
        Job(name: "Indeed", link: "https://www.indeed.com/Ios-Developer-jobs?vjk=cf862bd1aa8cb8c9"),
        Job(name: "Glassdoor", link: "https://www.glassdoor.com/Job/ios-developer-jobs-SRCH_KO0"),
        Job(name: "We Work Remotely", link: "https://weworkremotely.com/remote-jobs/search?utf8=%E2%9C%93&term=ios"),
        Job(name: "Remotive", link: "https://remotive.com/?query=ios"),
        Job(name: "Wellfound(AngelList)", link: "https://angel.co/role/ios-developer"),
        Job(name: "iOS Dev Jobs", link: "https://iosdevjobs.com/")
    ]
}


struct Job:Identifiable{
    let id = UUID()
    let name:String
    let link:String
}

struct Course:Identifiable{
    let id = UUID()
    let name:String
    let author:String
    let link:String
}

struct ResourceIOS:Identifiable{
    let id:String
    let name:String
    let link:String
}

struct ResourceIOSTwo:Identifiable{
    let id = UUID()
    let name:String
    let author:String
    let link:String
}

//struct ResourceIOS:Identifiable{
//    let id = UUID()
//    let name:String
//    let link:String
//}



