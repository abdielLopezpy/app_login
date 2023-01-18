//
//  appApp.swift
//  app
//
//  Created by alberto lopez  on 01/17/23.
//

import SwiftUI

@main
struct appApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LoginView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
