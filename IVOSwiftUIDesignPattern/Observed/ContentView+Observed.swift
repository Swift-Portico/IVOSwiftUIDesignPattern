//
//  ContentView+Observed.swift
//  IVOSwiftUIDesignPattern
//
//  Created by Pradeep's Macbook on 02/11/21.
//

import Combine
import SwiftUI

extension ContentView {
    
    class Observed: ObservableObject {
        
        @Published var profile = Profile()
        
        func fetchProfile(completion: @escaping(Error?) -> ()) {
            let profile = Profile.init(name: "Pradeep Kumar")
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                self.profile = profile
            }
        }
    }
}
