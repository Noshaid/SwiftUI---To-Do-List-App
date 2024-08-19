//
//  To_Do_List_AppApp.swift
//  To Do List App
//
//  Created by Noshaid Ali on 11/08/2024.
//

import SwiftUI
import FirebaseCore

@main
struct To_Do_List_AppApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
