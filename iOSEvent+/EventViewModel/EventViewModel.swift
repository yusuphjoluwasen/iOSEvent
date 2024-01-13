//
//  EventViewModel.swift
//  iOSEvent+
//
//  Created by Guru King on 02/03/2023.
//

import Foundation
import Combine

class EventViewModel:ObservableObject{
    
    private var publishers = Set<AnyCancellable>()
    private let repo:EventRepoProtocol
    @Published var events: [Event] = []
    
    init(eventRepo:EventRepoProtocol) {
        repo = eventRepo
    }
    
    func fetchEvents() {
        repo.fetchEvents()
                .receive(on: RunLoop.main)
                .sink(receiveCompletion:  { error in
                    print(error)
                }, receiveValue: { [weak self] output in
                    self?.events = self?.sortArrayByDate(array: output) ?? []
                    dump( self?.events)
                })
                .store(in: &publishers)
    }
    
    func sortArrayByDate(array:[Event]) -> [Event]{
        let dateYearFormatter = DateFormatter()
        dateYearFormatter.dateFormat = "yyyy"
        let currentYear = dateYearFormatter.string(from: Date())
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
    
        let currentEvents = array.filter{  convertDateFormat(inputDate: $0.start ?? "", oldformat: "yyyy-MM-dd", newFormat: "yyyy") == currentYear}
      
       return currentEvents.sorted(by: { dateFormatter.date(from:$0.start ?? "")?.compare(dateFormatter.date(from:$1.start ?? "")!) == .orderedAscending })
    }
}


