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

public final class TabCoordinator: Coordinator {
    
    @Published public var path: NavigationPath = .init()
    @Published public var sheet: Destination?
    @Published public var fullScreenCover: Destination?
    
    @Published public var selection: Tab = .a
    
    @ViewBuilder
    public func buildScene(_ scene: AppScene) -> some View {
        switch scene {
        default:
            VStack {
                Text("\(scene)")
             
                Button("dismiss") {
                    self.dismiss()
                }
            }
        }
    }
    
    public enum Destination: Sceneable {
        case sheet
        case fullScreenCover
        
        public var id: String { "\(self)" }
    }
    
}
