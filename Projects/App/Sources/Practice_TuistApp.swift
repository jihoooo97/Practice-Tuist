//
//  Practice-TuistApp.swift
//  AppManifests
//
//  Created by 유지호 on 6/21/24.
//

import Core
import RootFeature

import SwiftUI

@main
struct Practice_TuistApp: App {
    @Environment(\.scenePhase) private var scenePhase
    
    private let container = DIContainer.shared
    
    init() {
        container.registerDataDependencies()
        container.registerDomainDependencies()
        container.registerPresentationDependencies()
    }
    
    var body: some Scene {
        WindowGroup {
            RootFeatureView()
                .onChange(of: scenePhase) { newValue in
                    print("\(newValue)")
                }
        }
    }
    
}
