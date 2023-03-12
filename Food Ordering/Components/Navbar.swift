//
//  Navbar.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 5/3/2566 BE.
//

import SwiftUI

struct Navbar: View {
    @Binding var pageName: String
    
    var body: some View {
        
        VStack {
            
            VStack {
                
                HStack {
                    
                    Button {
                        pageName = "home"
                    } label: {
                        Image(systemName: pageName == "home" ? "house.fill" : "house")
                            .foregroundColor(.black)
                            .font(.system(size: 22))
                    }
                    .frame(width: 50, height: 50)
                    
                    Spacer()
                    
                    Button {
                        pageName = "chat"
                    } label: {
                        Image(systemName: pageName == "chat" ? "text.bubble.fill" : "text.bubble")
                            .foregroundColor(.black)
                            .font(.system(size: 22))
                    }
                    .frame(width: 50, height: 50)
                    
                    Spacer()
                    
                    NavigationLink(destination: MyCartView()) {
                        Group {
                            Image(systemName: "cart")
                                .foregroundColor(.white)
                                .padding()
                                .font(.system(size: 22))
                            
                        }
                        .frame(width: 50, height: 50)
                        .background(.black)
                        .cornerRadius(50)
                        .shadow(radius: 4)
                        
                        Text("2")
                            .font(.system(size: 12))
                            .foregroundColor(.white)
                            .frame(width: 22, height: 22)
                            .background(.orange)
                            .cornerRadius(50)
                            .offset(x: -28, y: -20)
                    }
                    .offset(x: 15, y: 0)
                    .frame(width: 40)
                    
                    Spacer()
                    
                    Button {
                        pageName = "noti"
                    } label: {
                        Image(systemName: pageName == "noti" ? "bell.fill" : "bell")
                            .foregroundColor(.black)
                            .font(.system(size: 22))
                    }
                    .frame(width: 50, height: 50)
                    
                    Spacer()
                    
                    Button {
                        pageName = "profile"
                    } label: {
                        Image(systemName: pageName == "profile" ? "person.fill" : "person")
                            .foregroundColor(.black)
                            .font(.system(size: 22))
                    }
                    .frame(width: 50, height: 50)
                    
                    
                }
                
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 14)
            .background(Color("bgNavbar"))
            .cornerRadius(30)
            
        }
        .frame(maxWidth: .infinity)
        .padding(.all, 12)
        .background(.white)
        .cornerRadius(40)
        
        
    }
}

struct Navbar_Previews: PreviewProvider {
    static var previews: some View {
        Navbar(pageName: .constant("home"))
    }
}
