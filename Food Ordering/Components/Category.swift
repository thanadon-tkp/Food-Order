//
//  Category.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 5/3/2566 BE.
//

import SwiftUI

private struct CategoryItem: Identifiable {
    var id: Int
    var icon: String
    var name: String
}

struct Category: View {
    @State private var categorys: [CategoryItem] =  [
        CategoryItem(id: 0, icon: "🍖" ,name: "All"),
        CategoryItem(id: 1, icon: "🍔" ,name: "Fast Food"),
        CategoryItem(id: 2, icon: "🍣" ,name: "Japanese Food"),
        CategoryItem(id: 3, icon: "🥘" ,name: "Thai Street Food"),
        CategoryItem(id: 4, icon: "🧋" ,name: "Drinks"),
        CategoryItem(id: 5, icon: "🍧" ,name: "Dessert"),
    ]
    
    var body: some View {
        
        ScrollView(.horizontal , showsIndicators: false) {
            
            HStack {
                
                ForEach(categorys) { CategoryItem in
                    
                    Button {
                        
                        //something...
                        
                    } label: {
                        
                        VStack {
                            Text(CategoryItem.icon)
                                .font(.system(size: 38))
                                .frame(width: 70, height: 70)
                                .background(.black.opacity(0.8))
                                .clipShape(Circle())
                            
                            Text(CategoryItem.name)
                                .foregroundColor(.secondary)
                        }
                        .frame(width: 90, height: 110)
                        
                    }
                }
                
                
            }
        }
        
    }
}

struct Category_Previews: PreviewProvider {
    static var previews: some View {
        Category()
    }
}
