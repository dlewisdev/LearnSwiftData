//
//  Learn_SwiftDataApp.swift
//  Learn SwiftData
//
//  Created by Danielle Lewis on 12/19/23.
//

import SwiftUI
import SwiftData

@main
struct Learn_SwiftDataApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [DataItem.self])
        }
    }
}
