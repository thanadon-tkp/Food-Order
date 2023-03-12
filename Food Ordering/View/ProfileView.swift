//
//  ProfileView.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 6/3/2566 BE.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
            NavigationLink(destination: Card(title: "Cheese Hot \nHamburger", price: "$8.99", review: "5.0 (3.8k)", bgImage: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60")) {
                Text("Open Card")
                    .padding()
                    .background(Color.gray.opacity(0.25))
                    .cornerRadius(8)
            }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
