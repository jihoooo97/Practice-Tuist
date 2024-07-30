//
//  AppCoordinator.swift
//  RootFeature
//
//  Created by 유지호 on 7/24/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import FeatureDependency
import Core

import SwiftUI

public final class AppCoordinator: Coordinator {
    
    @Published public var path: NavigationPath = .init()
    @Published public var sheet: Destination?
    @Published public var fullScreenCover: Destination?
    
    @Published public var selection: Tab = .a
    
    
    @ViewBuilder
    public func buildScene(_ scene: Destination) -> some View {
        switch scene {
        case .login:
            Button("Login") {
                UserDefaults.standard.set(true, forKey: "isLogined")
            }
        case .tab:
            CustomTabView()
        case .onboarding:
            Button("Onboarding") {
                UserDefaults.standard.set(false, forKey: "isFirst")
            }
        }
    }
    
    public enum Destination: Sceneable {
        case login
        case tab
        case onboarding
        
        public var id: String { "\(self)" }
    }
    
}
