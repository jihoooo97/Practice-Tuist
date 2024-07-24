//
//  Dependencies.swift
//  Practice-Tuist
//
//  Created by 유지호 on 7/24/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import Core
import Data
import Domain

import RootFeature
import FeatureA
import FeatureB
import FeatureC

import SwiftUI

extension App {
    
    var container: DIContainer { DIContainer.shared }
    
    func registerDataDependencies() {
        
    }
    
    func registerDomainDependencies() {
        
    }
    
    func registerPresentationDependencies() {
        // MARK: FeatureA
        container.register(FeatureAViewModel.self) {
            return FeatureAViewModel()
        }
        
        container.register(FeatureAView.self) {
            let viewModel = container.resolve(FeatureAViewModel.self)
            return FeatureAView(viewModel: viewModel)
        }
        
        container.register(FeatureADetailView.self) {
            FeatureADetailView()
        }
        
        
        // MARK: FeatureB
        container.register(FeatureBView.self) {
            FeatureBView()
        }
        
        container.register(FeatureBDetailView.self) {
            FeatureBDetailView()
        }
        
        
        // MARK: FeatureC
        container.register(FeatureCView.self) {
            FeatureCView()
        }
    }
    
}
