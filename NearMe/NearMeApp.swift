//
//  NearMeApp.swift
//  NearMe
//
//  Created by Dan Mori on 05/02/24.
//

import SwiftUI

@main
struct NearMeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(PlacesModel())
        }
    }
}
