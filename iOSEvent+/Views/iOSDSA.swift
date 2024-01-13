//
//  iOSDSA.swift
//  iOSEvent+
//
//  Created by Guru King on 03/03/2023.
//

import SwiftUI

struct iOSDSA: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading){
                    
                    Text("To become a skilled software ios engineer, it is important to have a strong grasp of data structures and algorithms")
                        .font(.caption)
                        .padding(.bottom)
              
                    VStack{
                        ForEach(dsaList()) { course in
                            Link(destination: URL(string: "\(course.link)")!) {
                                VStack{
                                    Text(course.name)
                                       
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
                .navigationTitle("DSA")
                .navigationBarTitleDisplayMode(.large)
                .foregroundColor(.primary)
            }
        }
    }
}

struct iOSDSA_Previews: PreviewProvider {
    static var previews: some View {
        iOSDSA()
    }
}


func dsaList() -> [ResourceIOSTwo]{
    return [
        ResourceIOSTwo(name: "Data Structures & Algorithms in Swift", author: "Udacity", link: "https://www.udacity.com/course/data-structures-and-algorithms-in-swift--ud1011"),
        ResourceIOSTwo(name: "Data Structures & Algorithms in Swift", author: "Kodeco", link: "https://www.kodeco.com/books/data-structures-algorithms-in-swift/v4.0"),
        ResourceIOSTwo(name: "Swift Algorithms & Data Structures", author: "Dennis", link: "https://dennis-xlc.gitbooks.io/swift-algorithms-data-structures/content/"),
        ResourceIOSTwo(name: "Swift Algorithm Club", author: "Kodeco", link: "https://github.com/kodecocodes/swift-algorithm-club"),
        ResourceIOSTwo(name: "LeetCode Swift Solutions", author: "https://github.com/soapyigu", link: "https://github.com/soapyigu/LeetCode-Swift")
        
       ]
}


