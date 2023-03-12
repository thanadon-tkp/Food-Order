//
//  CardDetailView.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 9/3/2566 BE.
//

import SwiftUI

struct CardDetailView: View {
    
    var title: String
    var price: String
    var review: String
    var bgImage: String
    
    @State var isCheck = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            
            //add to cart
            Button(action: {
                print("Add to Cart")
            }) {
                Text("Add to Cart")
                    .frame(maxWidth: .infinity, maxHeight: 54)
                    .background(Color("btnBlack"))
                    .foregroundColor(.white)
                    .bold()
                    .cornerRadius(40)
            }
            .padding(.horizontal)
            .zIndex(99)
            
            
            VStack {
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    //Title name
                    Text(title)
                        .bold()
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 16)
                    
                    
                    //restaurant name and review
                    HStack {
                        
                        Image(systemName: "tropicalstorm.circle.fill")
                            .font(.system(size: 20))
                        Text("Pizza Italian")
                            .bold()
                            .font(.system(size: 20))
                        
                        Spacer()
                        
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text("4.8")
                            .bold()
                        
                        Group {
                            Text("(2.2k review)")
                            Image(systemName: "chevron.right")
                        }
                        .foregroundColor(.secondary)
                        
                    }
                    
                    
                    //image
                    AsyncImage(url: URL(string: bgImage)) { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: 360, maxHeight: 320)
                            .clipped()
                            .cornerRadius(40)
                        
                    } placeholder: {
                        ProgressView()
                    }
                    .padding(.vertical, 20)
                    
                    
                    //detail
                    HStack {
                        Text("Details")
                            .bold()
                            .font(.title2)
                        
                        Spacer()
                        
                        Image(systemName: "clock")
                            .font(.system(size: 20))
                        Text("15 min")
                        
                    }
                    
                    //body details
                    Text("11/2 cups (355 ml) warm water (105°F-115°F), 1 package (< 1/4 teaspoons active dry yeast, 3/4 cups (4909) bread flour,.")
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .lineSpacing(6)
                        .padding(.vertical, 6)
                    
                    
                    //check box item
                    Text("Add extra Ingredients")
                        .bold()
                        .font(.title2)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 16)
                    
                    
                    //item check box
                    ForEach((1...5), id: \.self) { index in
                        VStack {
                            HStack {
                                Image(systemName: "clock.circle.fill")
                                    .font(.system(size: 32))
                                VStack(alignment: .leading) {
                                    Text("Item \(index)")
                                        .font(.system(size: 20))
                                    HStack {
                                        Text("50 mg")
                                            .foregroundColor(.secondary)
                                            .font(.system(size: 14))
                                        Text("+$0.\(index)0")
                                    }
                                    
                                }
                                
                                Spacer()
                                
                                
                                Toggle(isOn: $isCheck){}
                                    .toggleStyle(iOSCheckboxToggleStyle())
                                
                            }
                        }
                        .padding(.bottom, 12)
                    }
                    
                    Spacer()
                        .padding(.bottom, 60)
                }
            }
            .padding(.horizontal)
            
        }
    
        
        
        
    }
}

struct CardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CardDetailView(title: "Cheese Hot Hamburger", price: "$8.99", review: "5.0 (3.8k)", bgImage: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60")
    }
}


struct iOSCheckboxToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        // 1
        Button(action: {

            // 2
            configuration.isOn.toggle()

        }, label: {
            HStack {
                // 3
                Image(systemName: configuration.isOn ? "checkmark.square" : "square")

                configuration.label
            }
        })
    }
}
