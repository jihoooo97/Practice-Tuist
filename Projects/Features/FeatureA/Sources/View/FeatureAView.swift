//
//  FeatureAView.swift
//  Feature
//
//  Created by 유지호 on 6/21/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import FeatureDependency
import Core

import SwiftUI

public struct FeatureAView: View {
    @EnvironmentObject private var coordinator: FeatureACoordinator
    
    @StateObject private var viewModel: FeatureAViewModel
    
    public init(viewModel: FeatureAViewModel) {
        self._viewModel = StateObject(wrappedValue: viewModel)
    }
    
    public var body: some View {
        VStack {
            Button("push") {
                coordinator.push(.aDetail)
            }
            
            Button("sheet") {
                coordinator.present(.aDetail)
            }
            
            Button("fullScreenCover") {
                coordinator.fullScreenCover(.aDetail)
            }
        }
    }
}
