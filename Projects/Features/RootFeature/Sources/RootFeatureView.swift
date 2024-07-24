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
    @StateObject private var tabCoordinator = TabCoordinator()
    @StateObject private var aCoordinator = FeatureACoordinator()
    @StateObject private var bCoordinator = FeatureBCoordinator()
    @StateObject private var cCoordinator = FeatureCCoordinator()
    
    public init() { }
    
    public var body: some View {
        TabView(selection: $tabCoordinator.selection) {
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
        .sheet(item: $tabCoordinator.sheet) { scene in
            Text("\(scene)")
        }
        .fullScreenCover(item: $tabCoordinator.fullScreenCover) { scene in
            Text("\(scene)")
            
            Button("dismiss") {
                tabCoordinator.dismiss()
            }
        }
    }
}
