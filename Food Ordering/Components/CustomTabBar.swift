//
//  CustomTabBar.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 6/3/2566 BE.
//

import SwiftUI

struct CustomTabBar: View {
    @State private var selection:String = "home"
    
    var body: some View {
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

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar()
    }
}
