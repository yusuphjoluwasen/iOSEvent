//
//  iOSDesiignPattern.swift
//  iOSEvent+
//
//  Created by Guru King on 03/03/2023.
//

import SwiftUI

struct iOSDesignPattern: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Text("Having a strong understanding of design patterns as iOS developers can enhance the flexibility, resilience, and maintainability of our applications")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.caption)
                        .padding(.bottom)
                    
                    ForEach(getDesignPatterns()) { course in
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
                .navigationTitle("Design Pattern")
                .navigationBarTitleDisplayMode(.large)
                .foregroundColor(.primary)
            }
        }
    }
}

struct iOSDesignPattern_Previews: PreviewProvider {
    static var previews: some View {
        iOSDesignPattern()
    }
}


func getDesignPatterns() -> [Course]{
    return [
        Course(name: "Design Pattern in Swift", author: "Refactoring Guru", link: "https://refactoring.guru/design-patterns/swift"),
        Course(name: "Top 5 Design Patterns in Swift", author: "Ruby Garage", link: "https://rubygarage.org/blog/swift-design-patterns"),
        Course(name: "Design Pattern in Swift", author: "Oktawian Chojnacki", link: "https://github.com/ochococo/Design-Patterns-In-Swift"),
        Course(name: "Swift Design Patterns", author: "Paul Hudson", link: "https://www.hackingwithswift.com/books/design-patterns"),
        Course(name: "Design Patterns on iOS", author: "Kodeco", link: "https://www.kodeco.com/477-design-patterns-on-ios-using-swift-part-1-2"),
    
    ]
}


