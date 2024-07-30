//
//  RootFeature.swift
//  AppManifests
//
//  Created by 유지호 on 6/21/24.
//

import Core
import FeatureA
import FeatureB
import FeatureC

import SwiftUI

public struct RootFeatureView: View {
    @AppStorage("isLogined") private var isLogined: Bool = false
    @AppStorage("isFirst") private var isFirst: Bool = true
    
    @StateObject private var appCoordinator = AppCoordinator()
    
    public init() { }
    
    public var body: some View {
        appCoordinator.buildScene(isFirst ? .onboarding : isLogined ? .tab : .login)
            .environmentObject(appCoordinator)
            .sheet(item: $appCoordinator.sheet) { scene in
                Text("\(scene)")
            }
            .fullScreenCover(item: $appCoordinator.fullScreenCover) { scene in
                Text("\(scene)")
                
                Button("dismiss") {
                    appCoordinator.dismiss()
                }
            }
    }
}
