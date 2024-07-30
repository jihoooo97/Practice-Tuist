//
//  CustomTabView.swift
//  RootFeature
//
//  Created by 유지호 on 7/25/24.
//  Copyright © 2024 jiho. All rights reserved.
//

import Core

import FeatureA
import FeatureB
import FeatureC

import SwiftUI

struct CustomTabView: View {
    @EnvironmentObject private var appCoordinator: AppCoordinator
    @StateObject private var aCoordinator = FeatureACoordinator()
    @StateObject private var bCoordinator = FeatureBCoordinator()
    @StateObject private var cCoordinator = FeatureCCoordinator()
    
    var body: some View {
        TabView(selection: $appCoordinator.selection) {
            NavigationStack(path: $aCoordinator.path) {
                aCoordinator.buildScene(.a)
                    .navigationDestination(for: FeatureACoordinator.Destination.self) { scene in
                        aCoordinator.buildScene(scene)
                            .toolbarRole(.editor)
                    }
                    .sheet(item: $aCoordinator.sheet) { scene in
                        aCoordinator.buildScene(scene)
                    }
                    .fullScreenCover(item: $aCoordinator.fullScreenCover) { scene in
                        aCoordinator.buildScene(scene)
                    }
            }
            .environmentObject(aCoordinator)
            .tag(Tab.a)
            .tabItem {
                Label("A", systemImage: "a.circle")
            }
            
            NavigationStack(path: $bCoordinator.path) {
                bCoordinator.buildScene(.b)
                    .navigationDestination(for: FeatureBCoordinator.Destination.self) { scene in
                        bCoordinator.buildScene(scene)
                            .toolbarRole(.editor)
                    }
                    .sheet(item: $bCoordinator.sheet) { scene in
                        bCoordinator.buildScene(scene)
                    }
                    .fullScreenCover(item: $bCoordinator.fullScreenCover) { scene in
                        bCoordinator.buildScene(scene)
                    }
            }
            .environmentObject(bCoordinator)
            .tag(Tab.b)
            .tabItem {
                Label("B", systemImage: "b.circle")
            }
            
            NavigationStack(path: $cCoordinator.path) {
                cCoordinator.buildScene(.c)
                    .navigationDestination(for: FeatureCCoordinator.Destination.self) { scene in
                        cCoordinator.buildScene(scene)
                            .toolbarRole(.editor)
                    }
                    .sheet(item: $cCoordinator.sheet) { scene in
                        cCoordinator.buildScene(scene)
                    }
                    .fullScreenCover(item: $cCoordinator.fullScreenCover) { scene in
                        cCoordinator.buildScene(scene)
                    }
            }
            .environmentObject(cCoordinator)
            .tag(Tab.c)
            .tabItem {
                Label("C", systemImage: "c.circle")
            }
        }
    }
    
}
