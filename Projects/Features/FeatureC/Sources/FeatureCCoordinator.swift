//
//  FeatureCCoordinator.swift
//  FeatureC
//
//  Created by 유지호 on 7/24/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import FeatureDependency
import Core

import SwiftUI

public final class FeatureCCoordinator: Coordinator {
        
    @Published public var path: NavigationPath = .init()
    @Published public var sheet: Destination?
    @Published public var fullScreenCover: Destination?
    
    
    public init() { }
    
    
    @ViewBuilder
    public func buildScene(_ scene: Destination) -> some View {
        switch scene {
        case .c:
            container.resolve(FeatureCView.self)
        default:
            Button("dismiss") {
                self.dismiss()
            }
        }
    }
    
    public enum Destination: Sceneable {
        case c
        case cDetail
        
        public var id: String { "\(self)" }
    }
    
}
