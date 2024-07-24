//
//  FeatureADetailView.swift
//  FeatureA
//
//  Created by 유지호 on 7/24/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import SwiftUI

public struct FeatureADetailView: View {
    @EnvironmentObject private var coordinator: FeatureACoordinator
    
    public init() { }
    
    public var body: some View {
        Text("Hello, A!")
        
        Button("dismiss") {
            coordinator.dismiss()
        }
    }
}
