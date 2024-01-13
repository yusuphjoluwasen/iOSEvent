//
//  EventRepo.swift
//  iOSEvent+
//
//  Created by Guru King on 02/03/2023.
//

import Combine
import Foundation
import Yams

protocol EventRepoProtocol{
   func fetchEvents() -> AnyPublisher<EventList, Error>
}

struct EventRepo:EventRepoProtocol{
    func fetchEvents() -> AnyPublisher<EventList, Error> {
        URLSession.shared.dataTaskPublisher(for: URL(string: "https://raw.githubusercontent.com/Lascorbe/CocoaConferences/master/_data/conferences.yml")!)
            .map(\.data)
            .decode(type: EventList.self, decoder: YAMLDecoder())
            .eraseToAnyPublisher()
    }
}
