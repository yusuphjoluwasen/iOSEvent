//
//  Event.swift
//  iOSEvent+
//
//  Created by Guru King on 02/03/2023.
//

import Foundation

// MARK: - EventElement
struct Event: Codable, Identifiable {
    let id = UUID()
    let name: String?
    let link: String?
    let start, end, location: String?
    let cocoaOnly: Bool?
    let cfp: Cfp?

    enum CodingKeys: String, CodingKey {
        case name, link, start, end, location
        case cocoaOnly = "cocoa-only"
        case cfp
    }
}

// MARK: - Cfp
struct Cfp: Codable {
    let link: String?
    let deadline: String?
}

typealias EventList = [Event]


extension Event{
    var startDate:String {
        return convertDateFormat(inputDate: self.start ?? "", oldformat: "yyyy-MM-dd", newFormat: "MMM d, yyyy")
    }
    
    var endDate:String {
        return convertDateFormat(inputDate: self.end ?? "", oldformat: "yyyy-MM-dd", newFormat: "MMM d, yyyy")
    }
}
