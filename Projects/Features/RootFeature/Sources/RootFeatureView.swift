//
//  RootFeature.swift
//  AppManifests
//
//  Created by 유지호 on 6/21/24.
//

import FeatureA
import FeatureB
import FeatureC

import SwiftUI

public struct RootFeatureView: View {
    
    public init() { }
    
    public var body: some View {
        TabView {
            FeatureAView()
                .tabItem {
                    Label("A", systemImage: "a.circle")
                }

            FeatureBView()
                .tabItem {
                    Label("B", systemImage: "b.circle")
                }
            
            FeatureCView()
                .tabItem {
                    Label("C", systemImage: "c.circle")
                }
        }
    }
}

#Preview {
    RootFeatureView()
}
