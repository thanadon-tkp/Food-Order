//
//  SearchBar.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 5/3/2566 BE.
//

import SwiftUI

struct SearchBar: View {
    @State private var search: String = ""
    
    
    var body: some View {
        
        HStack {
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundColor(.secondary)
                
                TextField(
                    "Search",
                    text: $search
                )
                .frame(width: 120)
                
                Divider()
                
                Image(systemName: "location.circle")
                    .foregroundColor(.secondary)
                
                Text("New York. NYC")
                    .foregroundColor(.secondary)
                
                
            }
            .frame(height: 30)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .overlay(
                RoundedRectangle(cornerRadius: 40)
                    .stroke(Color.secondary, lineWidth: 1)
            )
            
            Button {
                
                //something...
                
            } label: {
                
                Image(systemName: "ellipsis")
                    .font(.system(size: 24))
                    .foregroundColor(.white)
                    .frame(width: 50, height: 50)
                    .background(.orange)
                    .cornerRadius(40)
                
            }
            
        }
        
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar()
    }
}
