//
//  AppTabBarView.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 6/3/2566 BE.
//

import SwiftUI

struct AppTabBarView: View {
    @State private var selection:String = "home"
    @State private var tabSelection: TabBarItem = TabBarItem(iconName: "house", title: "Home", color: Color.red)
    
    var body: some View {
        CustomTabBarContainerView(selection: $tabSelection) {
            Color.blue
                .tabBarItem(tab: TabBarItem(iconName: "house", title: "Home", color: Color.red), selection: $tabSelection)
            
            Color.red
                .tabBarItem(tab: TabBarItem(iconName: "heart", title: "Fevorites", color: Color.blue), selection: $tabSelection)
            
            Color.green
                .tabBarItem(tab: TabBarItem(iconName: "person", title: "Profile", color: Color.green), selection: $tabSelection)
        }
    }
}

struct AppTabBarView_Previews: PreviewProvider {
    
    static let tabs: [TabBarItem] = [
        TabBarItem(iconName: "house", title: "Home", color: Color.red),
        TabBarItem(iconName: "heart", title: "Fevorites", color: Color.blue),
        TabBarItem(iconName: "person", title: "Profile", color: Color.green),
    ]
    
    static var previews: some View {
        AppTabBarView()
    }
}

extension AppTabBarView {
    
    private var defaultTabView: some View {
        TabView(selection: $selection) {
            
            Color.red
                .tabItem() {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            Color.blue
                .tabItem() {
                    Image(systemName: "heart")
                    Text("Fevorites")
                }
            Color.orange
                .tabItem() {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}
