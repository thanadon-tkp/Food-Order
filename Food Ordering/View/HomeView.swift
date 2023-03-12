//
//  HomeView.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 6/3/2566 BE.
//

import SwiftUI


struct HomeView: View {
    
    var body: some View {
        VStack {
            
            ScrollView(.vertical, showsIndicators: false) {
                
                SearchBar()
                    .padding(.horizontal)
                    .padding(.top, 10)
                
                Category()
                    .padding(.vertical, 20)
                
                GroupCard()
                    .padding(.bottom, 50)
                
                Spacer()
                
            }
            .padding(.bottom, 40)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
