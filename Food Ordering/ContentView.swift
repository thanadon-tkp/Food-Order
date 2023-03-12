//
//  ContentView.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 5/3/2566 BE.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @State var selectMenu:String = "home"
    
    var body: some View {
        
        NavigationView {
            
            ZStack(alignment: .bottom) {
                
                GeometryReader { reader in
                    colorScheme == .dark ? Color.black
                        .frame(height: reader.safeAreaInsets.top, alignment: .top)
                        .ignoresSafeArea()
                    : Color.white
                        .frame(height: reader.safeAreaInsets.top, alignment: .top)
                        .ignoresSafeArea()
                }
                .zIndex(99)
                
                Navbar(pageName: $selectMenu)
                    .zIndex(99)
                
                VStack {
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        
                        switch selectMenu {
                        case "home":
                            HomeView()
                        case "noti":
                            NotificationView()
                        case "profile":
                            ProfileView()
                        default:
                            VStack {
                                Text("Page Not Found!")
                                    .font(.largeTitle)
                            }
                            .padding()
                        }
                        
                    }
                    .padding(.bottom, 40)
                    
                }
            }
            .ignoresSafeArea(.keyboard)
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
