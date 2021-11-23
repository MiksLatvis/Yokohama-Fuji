//
//  Yokohama_FujiApp.swift
//  Yokohama Fuji
//
//  Created by Miks Latvis on 22/11/2021.
//

import SwiftUI

@main
struct Yokohama_FujiApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                NavigationView {
                    WorldView()
                }
                .tabItem{
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView {
                    TipsView()
                }
                .tabItem{
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            .environmentObject(locations)
            
        }
    }
}
