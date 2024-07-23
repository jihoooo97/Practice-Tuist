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

public final class FeatureCCoordinator: Coordinator<CScene> {
    
    @ViewBuilder
    public func buildScene(_ scene: CScene) -> some View {
        switch scene {
        default:
            Text("\(scene)")
        }
    }
    
}
