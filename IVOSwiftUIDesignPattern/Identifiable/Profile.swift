//
//  Profile.swift
//  IVOSwiftUIDesignPattern
//
//  Created by Pradeep's Macbook on 02/11/21.
//

import UIKit

struct Profile: Identifiable {
    
    var id = UUID().uuidString
    var date: Date
    var name: String
    
    init(date: Date? = nil, name: String? = nil) {
        self.date = date ?? Date()
        self.name = name ?? ""
    }
}
