//
//  MediumView.swift
//  iOSEvent+
//
//  Created by Guru King on 03/03/2023.
//

import SwiftUI

struct MediumView: View {
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                VStack(alignment: .leading){
                    
                    Text("The following Medium articles have the potential to shape our iOS career")
                        .padding(.bottom)
                        .font(.caption)
                    
                    VStack{
                        ForEach(articlesList()) { articlelist in
                            Text(articlelist.title)
                                .font(.body.bold())
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            VStack{
                                ForEach(articlelist.items) { article in
                                    Button {
                                        openApp(url: article.link)
                                    } label: {
                                        VStack{
                                            Text(article.name)
                                                .font(Font.subheadline)
                                                
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                            Text(article.complexity)
                                                .font(Font.footnote.bold())
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                            Divider()
                                        }
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .multilineTextAlignment(.leading)
                                        .padding([.bottom])
                                        .foregroundColor(Color.primary)
                                        
                                    }

                                }
                            }
                        }
                    }
                 
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            }
            .navigationTitle("Medium")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct MediumView_Previews: PreviewProvider {
    static var previews: some View {
        MediumView()
    }
}

func articlesList() -> [ArticleListModel]{
    return [
        ArticleListModel(title: "Testing", items: [ArticleModel(name: "Write Readable, Robust, and Reliable Unit Tests for iOS Applications With Swift and XCTest", link: "https://betterprogramming.pub/writing-readable-robust-and-reliable-unit-tests-for-ios-applications-with-swift-and-xctest-b4c1cc70d35a", complexity: "Intermediate"), ArticleModel(name: "Write Nimble tests", link: "https://medium.com/roster-engineering-blog/write-nimble-tests-54a40702d6d3", complexity: "Intermediate")]),
        ArticleListModel(title: "Security", items: [ArticleModel( name: "How to implement secure storage for sensitive data in iOS?", link: "https://medium.com/@siempay/how-would-you-implement-secure-storage-for-sensitive-data-in-ios-55d55452804a", complexity: "Beginner"),ArticleModel( name: "App security — Why do we need a Certificate and how does it work?", link: "https://medium.com/towardsdev/app-security-why-do-we-need-a-certificate-and-how-does-it-work-7d752b4ce6b8", complexity: "Beginner")]),
        ArticleListModel(title: "Swift UI", items: [ArticleModel( name: "SwiftUI: @State vs @StateObject vs @ObservedObject vs @EnvironmentObject", link: "https://medium.com/@siempay/how-would-you-implement-secure-storage-for-sensitive-data-in-ios-55d55452804a", complexity: "Beginner"), ArticleModel( name: "Making a Real World Application With SwiftUI", link: "https://medium.com/better-programming/making-a-real-world-application-with-swiftui-cb40884c1056", complexity: "Intermediate"), ArticleModel( name: "Understanding SwiftUI Data Flow", link: "https://medium.com/better-programming/understanding-swiftui-data-flow-79429a49ae35", complexity: "Beginner")]),
        ArticleListModel(title: "Architecture", items: [ArticleModel( name: "Choosing an Architecture: The iOS Guide", link: "https://medium.com/@stevenpcurtis/choosing-an-architecture-the-ios-guide-c2b4c21c8f86", complexity: "Beginner"), ArticleModel( name: "MVVM with RxSwift, what a nice match!", link: "https://medium.com/@hadamuhammad/mvvm-with-rxswift-what-a-nice-match-8cf74be18d64", complexity: "Intermediate")]),
        ArticleListModel(title: "Clean Code", items: [ArticleModel( name: "Remove code duplication with Generics — A basic chat view", link: "https://medium.com/@aloksubedi/remove-code-duplication-with-generics-a-basic-chat-view-9c736eaae5de", complexity: "Advanced"), ArticleModel( name: "SOLID and the Single Responsibility Principle", link: "https://medium.com/better-programming/solid-swift-by-examples-part-one-35018d53d3e6", complexity: "Intermediate")]),
        ArticleListModel(title: "Interview", items: [ArticleModel( name: "My personal (opinionated) iOS Interview Questions in interviewing iOS Engineers", link: "https://medium.com/@agung1991putra/my-personal-opiniated-ios-interview-questions-in-interviewing-ios-engineers-cf6d335a1f84", complexity: "Beginner"),ArticleModel( name: "50 iOS Interview Questions And Answers", link: "https://medium.com/@duruldalkanat/ios-interview-questions-13840247a57a", complexity: "Beginner")]),
        ArticleListModel(title: "Performance", items: [ArticleModel( name: "Few ways of improving your iOS APP performance in Swift (1)", link: "https://towardsdev.com/few-ways-of-improving-your-app-performance-in-swift-1-961214ab188b", complexity: "Intermediate"),ArticleModel( name: "My personal (opinionated) iOS Interview Questions in interviewing iOS Engineers", link: "https://medium.com/@agung1991putra/my-personal-opiniated-ios-interview-questions-in-interviewing-ios-engineers-cf6d335a1f84", complexity: "Beginner")]),
        ArticleListModel(title: "General", items: [ArticleModel( name: "iOS Dev: Difference between frame and bound, the easiest explanation you can find nowhere", link: "https://towardsdev.com/few-ways-of-improving-your-app-performance-in-swift-1-961214ab188b", complexity: "Intermediate"),ArticleModel( name: "A Complete Guide to iOS App Auto Deployment with CI-CD", link: "https://medium.com/canopas/a-complete-guide-to-ios-app-auto-deployment-with-ci-cd-b5dc516ba41d", complexity: "Intermediate"),ArticleModel( name: "iOS Cells Communication: Choosing Between Delegates and Closures", link: "https://medium.com/@siempay/ios-cells-communication-choosing-between-delegates-and-closures-6e1f1fbbc257", complexity: "Intermediate"), ArticleModel( name: "Best resources for Advanced iOS Developer (Swift)", link: "https://medium.com/@PavloShadov/best-resources-for-advanced-ios-developer-swift-ade30374593d", complexity: "Advanced")]),
        
    ]
}
struct ArticleListModel:Identifiable{
    let id = UUID()
    let title:String
    let items:[ArticleModel]
}


struct ArticleModel:Identifiable{
    let id = UUID()
    let name:String
    let link:String
    let complexity:String
}




