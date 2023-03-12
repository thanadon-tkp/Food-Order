//
//  Card.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 6/3/2566 BE.
//

import SwiftUI

struct Card: View {
    
    var title: String
    var price: String
    var review: String
    var bgImage: String
    
    var body: some View {
        VStack {
            
            HStack {
                
                Text(title)
                    .font(.title)
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .shadow(radius: 4)
                
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 40)
            
            Spacer()
            
            VStack {
                
                HStack {
                    
                    Text(price)
                        .font(.title)
                        .bold()
                        .foregroundColor(.white)
                        .shadow(radius: 4)
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 1)
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text(review)
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                .shadow(radius: 4)
                
                HStack {
                    
                    Button(action: {
                        print("Add to Cart")
                    }) {
                        Text("Add to Cart")
                            .frame(width: 200, height: 50)
                            .background(.white)
                            .foregroundColor(.black)
                            .bold()
                            .cornerRadius(40)
                    }
                    
                    Button (action: {
                        print("Chat")
                    }) {
                        Image(systemName: "text.bubble")
                            .frame(width: 50, height: 50)
                            .background(.ultraThinMaterial.opacity(0.8))
                            .clipShape(Circle())
                            .foregroundColor(.white)
                    }
                    
                    Button (action: {
                        print("Like")
                    }) {
                        Image(systemName: "heart")
                            .frame(width: 50, height: 50)
                            .background(.ultraThinMaterial.opacity(0.8))
                            .clipShape(Circle())
                            .foregroundColor(.white)
                    }
                    
                }
                .padding()
                
            }
            
        }
        .frame(width: 360, height: 360)
        .cornerRadius(40)
        .background(
            
            AsyncImage(url: URL(string: bgImage)) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 360, maxHeight: 360)
                    .clipped()
                    .cornerRadius(40)
                
            } placeholder: {
                ProgressView()
            }
            
        )
        
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(title: "Cheese Hot Hamburger", price: "$8.99", review: "5.0 (3.8k)", bgImage: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60")
    }
}
