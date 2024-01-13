//
//  ContentView.swift
//  iOSEvent+
//
//  Created by Guru King on 02/03/2023.
//

import SwiftUI

struct ContentView: View {
    let repo:EventRepoProtocol = EventRepo()
   
    var body: some View {
        VStack {
            FirstPageView()
                .environmentObject(EventViewModel(eventRepo: repo))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
