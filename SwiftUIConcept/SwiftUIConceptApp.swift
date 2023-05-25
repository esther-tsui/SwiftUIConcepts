//
//  SwiftUIConceptApp.swift
//  SwiftUIConcept
//
//  Created by Wing Hei Tsui on 25/05/2023.
//

import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        #if os(iOS)
        MyScene()
//        WindowGroup {
//            TabView {
//                ContentView()
//                    .tabItem {
//                        Label("Journal", systemImage: "book")
//                    }
//
//                SettingsView()
//                    .tabItem {
//                        Label("Settings", systemImage: "gear")
//                    }
//            }
//        }
//        #elseif os(macOS)
//        MyAlternativeScene()
////        WindowGroup {
////            AlternativeContentView()
//////        }
////
////        Settings {
////            SettingsView()
////        }
//        #endif
//    }
//}
