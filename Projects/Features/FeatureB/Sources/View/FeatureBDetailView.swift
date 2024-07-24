//
//  FeatureBDetailView.swift
//  FeatureB
//
//  Created by 유지호 on 7/24/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import SwiftUI

public struct FeatureBDetailView: View {
    @EnvironmentObject private var coordinator: FeatureBCoordinator
    
    public init() { }
    
    public var body: some View {
        Text("Hello, B!")
        
        Button("dismiss") {
            coordinator.dismiss()
        }
    }
}
