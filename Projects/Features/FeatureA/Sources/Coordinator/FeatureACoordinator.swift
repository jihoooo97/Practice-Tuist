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

public final class FeatureACoordinator: Coordinator<AScene> {
    
    @ViewBuilder
    public func buildScene(_ scene: AScene) -> some View {
        switch scene {
        case .a:
            FeatureAView()
        case .aDetail:
            FeatureADetailView()
        case .sheet:
            FeatureASheet()
        case .fullScreenCover:
            FeatureAFullScreenView()
        }
    }
    
}
