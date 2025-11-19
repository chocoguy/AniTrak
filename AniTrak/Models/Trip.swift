//
//  Trip.swift
//  AniTrak
//
//  Created by Edgar Zarco on 11/17/25.
//

import SwiftData
import System
import Foundation

@Model
final class Trip {
    //Persisted values
    var name: String
    //can store as NULL
    var notes: String?
    var destination: String
    var startDate: Date
    var endDate: Date
    
//    @Relationship(deleteRule: .cascade, inverse: \BucketListItem.trip)
//    var bucketListItems: [BucketListItem]
    
    init(name: String, destination: String, startDate: Date, endDate: Date,) {
        self.name = name
        self.destination = destination
        self.startDate = startDate
        self.endDate = endDate
    }
}
