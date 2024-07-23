//
//  FeatureAFullScreenView.swift
//  FeatureA
//
//  Created by 유지호 on 7/24/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import SwiftUI

struct FeatureAFullScreenView: View {
    @EnvironmentObject private var coordinator: FeatureACoordinator
    
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
    FeatureAFullScreenView()
}
