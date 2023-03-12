//
//  MyCartView.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 10/3/2566 BE.
//

import SwiftUI

struct MyCartView: View {
    @Environment(\.colorScheme) var colorScheme
    
    
    struct TaskEntry: Codable  {
        let id: Int
        let title: String
    }
    
    @State var results = [TaskEntry]()
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            //Total
            VStack {
                VStack {
                    
//                    Text(results[0].title)
                    
                    Group {
                        HStack {
                            Text("Sub total")
                            Spacer()
                            Text("$63.96")
                        }
                        HStack {
                            Text("Taxes & Fees")
                            Spacer()
                            Text("$10.00")
                        }
                        HStack {
                            Text("Delivery Fee")
                            Spacer()
                            Text("$5.00")
                        }
                    }
                    .padding(.vertical, 4)
                    
                    
                    Divider()
                    
                    HStack {
                        Group {
                            Text("Total")
                            Spacer()
                            Text("$78.96")
                        }
                        .bold()
                        .font(.system(size: 24))
                    }
                    .padding(.top, 12)
                    .padding(.bottom, 20)
                    
                    //checkout
                    Button(action: {
                        print("Checkout")
                    }) {
                        Text("Checkout")
                            .frame(maxWidth: .infinity, maxHeight: 54)
                            .background(Color("btnBlack"))
                            .foregroundColor(.white)
                            .bold()
                            .cornerRadius(40)
                    }
                    
                }
                .padding(.horizontal)
                
            }
            .padding(.top, 20)
            .background(colorScheme == .dark ? Color.black
                .shadow(color: .white.opacity(0.2), radius: 5)
                        : Color.white
                .shadow(color: .black.opacity(0.2), radius: 5)
                        
            )
            .zIndex(99)
            
            //Item View
            ScrollView(showsIndicators: false) {
                VStack {
                    
                    Text("My Cart")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .bold()
                        .font(.title)
                    
                    //item order
                    ForEach((1...5), id: \.self) { index in
                        OrderView()
                    }
                    
                }
                
                Spacer()
                    .padding(.bottom, 280)
            }
            .padding(.horizontal)
            
        }
        .onAppear {
            
            //get data
            Task {
               await loadData()
                
                print(results)
            }
            
            
            
            print("DetailView appeared!")
            
        }
        .onDisappear {
            print("DetailView disappeared!")
        }
        
    }
    
    //get data from api
    func loadData() async {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos") else {
            print("Your API end point is Invalid")
            return
        }
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                if let response = try? JSONDecoder().decode([TaskEntry].self, from: data) {
                    DispatchQueue.main.async {
                        print(response)
                        self.results = response
                    }
                    return
                }
            }
        }.resume()
    }
}

struct MyCartView_Previews: PreviewProvider {
    static var previews: some View {
        MyCartView()
    }
}

struct OrderView: View {
    
    var body: some View {
        HStack{
            
            //image
            AsyncImage(url: URL(string: "https://images.unsplash.com/photo-1568901346375-23c9450c58cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60")) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 120, maxHeight: 120)
                    .clipped()
                    .cornerRadius(20)
                
            } placeholder: {
                ProgressView()
            }
            .padding(.trailing)
            
            VStack(alignment: .leading) {
                Group {
                    Text("Cheese Hot Hamburger")
                        .bold()
                    Text("$18.99")
                        .font(.system(size: 14))
                        .foregroundColor(.secondary)
                }
                .padding(.vertical, 2)
                
                Spacer()
                
                HStack {
                    HStack {
                        Image(systemName: "minus.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.secondary)
                        
                        Spacer()
                        
                        Text("2")
                        
                        Spacer()
                        
                        Image(systemName: "plus.circle")
                            .font(.system(size: 24))
                            .foregroundColor(.secondary)
                        
                    }
                    .frame(width: 100)
                    
                    Spacer()
                    
                    Image(systemName: "multiply")
                        .font(.system(size: 24))
                        .foregroundColor(.secondary)
                        .padding(.trailing)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}
