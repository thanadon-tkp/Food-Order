//
//  CardItem.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 5/3/2566 BE.
//

import SwiftUI

struct CardItem: View {
    
    var body: some View {
        
        VStack {
            
            HStack {
                
                Text("Cheese Hot \nHamburger")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .shadow(radius: 4)
                
                Spacer()
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 40)
            
            Spacer()
            
            VStack {
                
                HStack {
                    
                    Text("$8.99")
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
                    
                    Text("5.0 (3.8k)")
                        .foregroundColor(.white)
                    
                    Spacer()
                }
                .padding(.horizontal, 20)
                .shadow(radius: 4)
                
                HStack {
                    
                    Button {
                        //action
                    } label: {
                        Text("Add to Cart")
                            .frame(width: 200, height: 50)
                            .background(.white)
                            .foregroundColor(.black)
                            .bold()
                            .cornerRadius(40)
                    }
                    
                    Button {
                        //action
                    } label: {
                        Image(systemName: "text.bubble")
                            .frame(width: 50, height: 50)
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 50))
                            .foregroundColor(.white)
                        
                    }
                    
                    Button {
                        //action
                    } label: {
                        Image(systemName: "heart")
                            .frame(width: 50, height: 50)
                            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 50))
                            .cornerRadius(50)
                            .foregroundColor(.white)
                    }
                    
                }
                .padding()
            }
            
        }
        .frame(width: 360, height: 360)
        .cornerRadius(40)
        .background(

            AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60")) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
                .frame(width: .infinity, height: .infinity)
                .cornerRadius(40)
        )
        
    }
}

struct CardItem_Previews: PreviewProvider {
    static var previews: some View {
        CardItem()
    }
}
