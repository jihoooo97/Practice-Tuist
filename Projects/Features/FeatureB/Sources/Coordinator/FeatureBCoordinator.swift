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

public final class FeatureBCoordinator: Coordinator<BScene> {
    
    @ViewBuilder
    public func buildScene(_ scene: BScene) -> some View {
        switch scene {
        case .b:
            FeatureBView()
        case .bDetail:
            FeatureBDetailView()
        case .sheet:
            FeatureBSheet()
        case .fullScreenCover:
            FeatureBFullScreenView()
        }
    }
    
}
