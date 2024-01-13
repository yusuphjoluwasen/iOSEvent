//
//  iOSCourses.swift
//  iOSEvent+
//
//  Created by Guru King on 03/03/2023.
//

import SwiftUI

struct iOSCourses: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    ForEach(getCourses()) { course in
                        Link(destination: URL(string: "\(course.link)")!) {
                            VStack{
                                HStack{
                                    Text(course.name)
                                        .font(Font.title3)
                                        .padding(.bottom, 1)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "arrow.right")
                                }
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
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                .navigationTitle("iOS Courses")
                .navigationBarTitleDisplayMode(.large)
                .foregroundColor(.primary)
            }
        }
    }
}

struct iOSCourses_Previews: PreviewProvider {
    static var previews: some View {
        iOSCourses()
    }
}


func getCourses() -> [Course]{
    return [
        Course(name: "DesignCode", author: "DesignCode", link: "https://www.linkedin.com/jobs/search/?currentJobId=3496220769&f_JT=F&geoId=102257491&keywords=ios%20developer&location=London&refresh=true"),
        Course(name: "SwiftUI Animation", author: "Amos Gyamfi", link: "https://www.udemy.com/user/amos-gyamfi/"),
        
        Course(name: "Hacking with Swift", author: "Paul Hudson", link: "https://www.hackingwithswift.com/"),
        
        Course(name: "IOS Development Bootcamp", author: "Dr. Angela Yu", link: "https://www.udemy.com/course/ios-13-app-development-bootcamp/"),
        Course(name: "Kodeco", author: "Kodeco (new raywenderlich.com)", link: "https://www.kodeco.com/ios/paths"),
        
        Course(name: "Esssential Developer", author: "Caio Zullo", link: "https://www.essentialdeveloper.com/"),
        
        Course(name: "Big Mountain Studio", author: "Big Mountain Studio", link: "https://www.bigmountainstudio.com/"),
        
        Course(name: "Donny Wals", author: "Donny", link: "https://www.donnywals.com/"),
        
        Course(name: "AppCoda", author: "Simon Ng", link: "https://www.appcoda.com/"),
        
        Course(name: "NSScreenCast", author: "Ben Scheirman", link: "https://nsscreencast.com/episodes"),
        
        Course(name: "swiftbysundell", author: "John Sundell.", link: "https://www.swiftbysundell.com/"),
        
        Course(name: "Objc.io", author: "Chris Eidhof", link: "https://www.objc.io/")
    ]
}


