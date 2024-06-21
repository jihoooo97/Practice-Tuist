//
//  Practice-TuistApp.swift
//  AppManifests
//
//  Created by 유지호 on 6/21/24.
//

import SwiftUI
import Feature
import SecondFeature
import Services

@main
struct ANBDConsumerApp: App {
    
    var body: some Scene {
        WindowGroup {
            TabView {
                FeatureView(someService: SomeService())
                    .tabItem {
                        Label("First", systemImage: "1.circle")
                    }
    
                SecondFeatureView()
                    .tabItem {
                        Label("Second", systemImage: "2.circle")
                    }
            }
        }
    }
    
}
