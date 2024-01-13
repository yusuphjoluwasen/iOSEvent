//
//  iOSBooks.swift
//  iOSEvent+
//
//  Created by Guru King on 03/03/2023.
//

import SwiftUI

struct iOSBooks: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    Text("One effective way to learn programming is from an expert, and reading a book provides a means of accessing such expertise")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.caption)
                        .padding(.bottom)
                    ForEach(getBooks()) { course in
                        Link(destination: URL(string: "\(course.link)")!) {
                            VStack{
                                HStack{
                                    Text(course.name)
                                        .font(Font.subheadline)
                                    
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
                .navigationTitle("iOS Books")
                .navigationBarTitleDisplayMode(.large)
                .foregroundColor(.primary)
            }
        }
    }
}

struct iOSBooks_Previews: PreviewProvider {
    static var previews: some View {
        iOSBooks()
    }
}


func getBooks() -> [Course]{
    return [
        Course(name: "Advanced IOS App Architecture", author: "René Cacheaux, Josh Berlin", link: "https://www.kodeco.com/books/advanced-ios-app-architecture/v4.0"),
        Course(name: "Swift in Depth", author: "Tjeerd in 't Veen",link: "https://www.manning.com/books/swift-in-depth?a_aid=swiftindepth&a_bid=04b4fbb6"),
        
        Course(name: "A Step-by-Step Guide for Absolute Beginners", author: "Daniel Bell", link: "https://www.amazon.com/gp/product/1698927835/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1698927835&linkCode=as2&tag=booksoncode-20&linkId=db823efe895a9fa06f7a74a4bb372391"),
        
        Course(name: "Learning Swift", author: "O’Reilly", link: "https://www.oreilly.com/library/view/learning-swift-3rd/9781491987568/"),
        Course(name: "Kodeco", author: "Kodeco (new raywenderlich.com)", link: "https://www.kodeco.com/ios/paths"),
        
        Course(name: "Protocol Oriented Programming with Swift", author: "Jon Hoffman", link: "https://www.essentialdeveloper.com/"),
        
        Course(name: "High Performance iOS Apps", author: "Gaurav Vaish on O'reilly", link: "https://www.oreilly.com/library/view/high-performance-ios/9781491910993/"),
        
        Course(name: "iOS Programming: The Big Nerd Ranch Guide", author: "Christian Keur, Aaron Hillegass", link: "https://bignerdranch.com/books/ios-programming-the-big-nerd-ranch-guide-7th-edition/"),
    ]
}


