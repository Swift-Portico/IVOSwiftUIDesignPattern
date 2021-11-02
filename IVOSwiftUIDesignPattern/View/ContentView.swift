//
//  ContentView.swift
//  IVOSwiftUIDesignPattern
//
//  Created by Pradeep's Macbook on 02/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var observed = Observed()
    
    var body: some View {
        Text("Hello, \(observed.profile.name)!")
            .padding()
            .onAppear {
                fetchProfile()
            }
    }
    
    func fetchProfile() {
        observed.fetchProfile { err in
            if let err = err{
                print(err.localizedDescription)
                return
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
