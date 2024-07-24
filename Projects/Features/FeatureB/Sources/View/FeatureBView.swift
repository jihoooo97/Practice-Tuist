//
//  FeatureBView.swift
//  AppManifests
//
//  Created by 유지호 on 6/21/24.
//

import FeatureDependency
import Core

import SwiftUI

public struct FeatureBView: View {
    @EnvironmentObject private var coordinator: FeatureBCoordinator
    
    public init() { }
    
    public var body: some View {
        VStack {
            Button("push") {
                coordinator.push(.bDetail)
            }
            
            Button("sheet") {
                coordinator.present(.bDetail)
            }
            
            Button("fullScreenCover") {
                coordinator.fullScreenCover(.bDetail)
            }
        }
    }
}
