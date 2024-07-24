//
//  FeatureCView.swift
//  AppManifests
//
//  Created by 유지호 on 6/21/24.
//

import FeatureDependency
import Core

import SwiftUI

public struct FeatureCView: View {
    @EnvironmentObject private var coordinator: FeatureCCoordinator
    
    public init() { }
    
    public var body: some View {
        VStack {
            Button("push") {
                coordinator.push(.cDetail)
            }
            
            Button("sheet") {
                coordinator.present(.cDetail)
            }
            
            Button("fullScreenCover") {
                coordinator.fullScreenCover(.cDetail)
            }
        }
    }
}
