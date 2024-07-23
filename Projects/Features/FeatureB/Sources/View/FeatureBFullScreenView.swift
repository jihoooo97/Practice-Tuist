//
//  FeatureBFullScreenView.swift
//  FeatureB
//
//  Created by 유지호 on 7/24/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import SwiftUI

struct FeatureBFullScreenView: View {
    @EnvironmentObject private var coordinator: FeatureBCoordinator
    
    var body: some View {
        VStack {
            Text("Hello, A FullScreenCover!")
            
            Button("dismiss") {
                coordinator.dismiss()
            }
        }
    }
}

#Preview {
    FeatureBFullScreenView()
}
