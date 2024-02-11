//
//  LingoMingoApp.swift
//  LingoMingo
//
//  Created by Junyeong Jo on 2/10/24.
//

import SwiftUI

@main
struct LingoMingoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
