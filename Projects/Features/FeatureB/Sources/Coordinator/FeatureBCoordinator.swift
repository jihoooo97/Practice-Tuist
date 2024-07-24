//
//  FeatureBCoordinator.swift
//  FeatureB
//
//  Created by 유지호 on 7/24/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import FeatureDependency
import Core

import SwiftUI

public final class FeatureBCoordinator: Coordinator {
    
    @Published public var path: NavigationPath = .init()
    @Published public var sheet: Destination?
    @Published public var fullScreenCover: Destination?
    
    
    public init() { }
    
    
    @ViewBuilder
    public func buildScene(_ scene: Destination) -> some View {
        switch scene {
        case .b:
            container.resolve(FeatureBView.self)
        case .bDetail:
            container.resolve(FeatureBDetailView.self)
        }
    }
    
    public enum Destination: Sceneable {
        case b
        case bDetail
        
        public var id: String { "\(self)" }
    }
    
}
