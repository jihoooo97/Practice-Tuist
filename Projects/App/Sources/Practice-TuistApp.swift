//
//  Practice-TuistApp.swift
//  AppManifests
//
//  Created by 유지호 on 6/21/24.
//

import SwiftUI
import Feature
import Services

@main
struct ANBDConsumerApp: App {
    
    var body: some Scene {
        WindowGroup {
            FeatureView(someService: SomeService())
        }
    }
    
}
