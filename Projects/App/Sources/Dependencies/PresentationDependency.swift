//
//  PresentationDependency.swift.swift
//  Practice-Tuist
//
//  Created by 유지호 on 7/24/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import Core

import RootFeature
import FeatureA
import FeatureB
import FeatureC

import SwiftUI

extension DIContainer {
        
    func registerPresentationDependencies() {
        // MARK: FeatureA
        register(FeatureAViewModel.self) {
            return FeatureAViewModel()
        }
        
        register(FeatureAView.self) {
            let viewModel = self.resolve(FeatureAViewModel.self)
            return FeatureAView(viewModel: viewModel)
        }
        
        register(FeatureADetailView.self) {
            FeatureADetailView()
        }
        
        
        // MARK: FeatureB
        register(FeatureBView.self) {
            FeatureBView()
        }
        
        register(FeatureBDetailView.self) {
            FeatureBDetailView()
        }
        
        
        // MARK: FeatureC
        register(FeatureCView.self) {
            FeatureCView()
        }
    }
    
}
