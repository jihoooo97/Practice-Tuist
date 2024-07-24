//
//  Practice-TuistApp.swift
//  AppManifests
//
//  Created by 유지호 on 6/21/24.
//

import Data
import RootFeature

import SwiftUI

@main
struct Practice_TuistApp: App {
    
    init() {
        registerDataDependencies()
        registerDomainDependencies()
        registerPresentationDependencies()
    }
    
    var body: some Scene {
        WindowGroup {
            RootFeatureView()
        }
    }
    
}
