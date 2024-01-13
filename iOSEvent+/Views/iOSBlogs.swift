//
//  iOSBlogs.swift
//  iOSEvent+
//
//  Created by Guru King on 03/03/2023.
//

import SwiftUI

struct iOSBlogs: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading){
                    
                    Text("The community has produced some truly exceptional articles, and you cannot go wrong with reading any of them!")
                        .padding(.bottom)
                        .font(.caption)
                    
                    VStack{
                        ForEach(blogList()) { course in
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
                .navigationTitle("Blogs")
                .navigationBarTitleDisplayMode(.large)
                .foregroundColor(.primary)
            }
        }
    }
}

struct iOSBlogs_Previews: PreviewProvider {
    static var previews: some View {
        iOSBlogs()
    }
}


func blogList() -> [ResourceIOSTwo]{
    return [
        ResourceIOSTwo(name: "Best Resources for iOS Engineers", author: "Alex Grebenyuk", link: "https://kean.blog/post/learn-ios")
       ]
}
