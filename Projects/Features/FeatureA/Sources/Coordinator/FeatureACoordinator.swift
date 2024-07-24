//
//  FeatureACoordinator.swift
//  FeatureA
//
//  Created by 유지호 on 7/23/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import FeatureDependency
import Core

import SwiftUI

public final class FeatureACoordinator: Coordinator {
        
    @Published public var path: NavigationPath = .init()
    @Published public var sheet: Destination?
    @Published public var fullScreenCover: Destination?
    
    
    public init() { }
    
    
    @ViewBuilder
    public func buildScene(_ scene: Destination) -> some View {
        switch scene {
        case .a:
            container.resolve(FeatureAView.self)
        case .aDetail:
            container.resolve(FeatureADetailView.self)
        }
    }
    
    public enum Destination: Sceneable {
        case a
        case aDetail
        
        public var id: String { "\(self)" }
    }
    
}
