//
//  FeatureAViewModel.swift
//  FeatureA
//
//  Created by 유지호 on 7/23/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import FeatureDependency
import Core

import Foundation

public final class FeatureAViewModel: ObservableObject {
    
    @Published var sum: Int = 0
    
    public init() {
        print("init")
    }
    
    deinit {
        print("deinit")
    }
    
}
