//
//  AppTabView.swift
//  ThreadsClone
//
//  Created by Basith on 27/08/24.
//

import SwiftUI

struct AppTabView: View {
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
            Text("Feed")
                .tabItem {
                    Image(systemName: "house")
                        .environment(\.symbolVariants, selectedIndex == 0 ? .fill : .none)
                }
                .onAppear { selectedIndex = 0}
                .tag(0)
            
            Text("Explore")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
                .onAppear { selectedIndex = 1}
                .tag(1)
            Text("Upload")
                .tabItem {
                    Image(systemName: "plus")
                }
                .onAppear { selectedIndex = 2}
                .tag(2)
            Text("Activity")
                .tabItem {
                    Image(systemName: "heart")
                        .environment(\.symbolVariants, selectedIndex == 3 ? .fill : .none)
                }
                .onAppear { selectedIndex = 3}
                .tag(3)
            Text("Profile")
                .tabItem {
                    Image(systemName: "person")
                        .environment(\.symbolVariants, selectedIndex == 4 ? .fill : .none)
                }
                .onAppear { selectedIndex = 4}
                .tag(4)
        }
        .tint(.black)
    }
}

#Preview {
    AppTabView()
}
