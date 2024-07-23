//
//  TabCoordinator.swift
//  RootFeature
//
//  Created by 유지호 on 7/24/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import FeatureDependency
import Core

import SwiftUI

public final class TabCoordinator: Coordinator<AppScene> {

    @Published public var selection: Tab = .a
    
    @ViewBuilder
    public func buildScene(_ scene: AppScene) -> some View {
        switch scene {
        default:
            Text("\(scene)")
        }
    }
    
}
