//
//  GroupCard.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 6/3/2566 BE.
//

import SwiftUI

private struct menuItem: Identifiable {
    var id: Int
    var title: String
    var price: String
    var review: String
    var imageUrl: String
}

struct GroupCard: View {
    @State private var menu: [menuItem] =  [
        menuItem(id: 0, title: "Cheese Hot Hamburger", price: "$8.99", review: "5.0 (3.8k)", imageUrl:"https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60"),
        menuItem(id: 1, title: "Italian Pizza", price: "$12.99", review: "4.5 (1.2k)", imageUrl:"https://images.unsplash.com/photo-1513104890138-7c749659a591?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGl6emF8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60"),
        menuItem(id: 2, title: "Pancake", price: "$14.99", review: "4.2 (1.6k)", imageUrl:"https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Rm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60"),
        menuItem(id: 3, title: "Salad", price: "$9.99", review: "4.0 (2.6k)", imageUrl:"https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Rm9vZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60"),
    ]
    
    var body: some View {
        
        VStack {
            
            HStack {
                Text("Popular items")
                    .bold()
                    .font(.system(.title))
                    .padding(.leading, 10)
                
                Spacer()
            }
            
            ScrollView(.horizontal , showsIndicators: false) {
                
                HStack(spacing: 0) {
                    
                    ForEach(menu.indices) { index in
                        
                        NavigationLink(destination: CardDetailView(title: menu[index].title, price: menu[index].price, review: menu[index].review, bgImage: menu[index].imageUrl)) {
                            Card(title: menu[index].title, price: menu[index].price, review: menu[index].review, bgImage: menu[index].imageUrl)
                                .padding(.leading, 12)
                                .padding(.trailing, index == (menu.count - 1) ? 12 : 0)
                        }
                        
                        
                        
                    }
                    
                }
                
            }
            
            HStack {
                Text("Delicious items")
                    .bold()
                    .font(.system(.title))

                Spacer()

                Text("See All")
                    .bold()
                    .foregroundColor(.orange)
            }
            .padding(.top, 20)
            .padding(.horizontal)

            VStack(spacing: 16) {

                ForEach(menu) { menuItem in

                    Card(title: menuItem.title, price: menuItem.price, review: menuItem.review, bgImage: menuItem.imageUrl)

                }

            }
            
            
        }
        
    }
}

struct GroupCard_Previews: PreviewProvider {
    static var previews: some View {
        GroupCard()
    }
}
