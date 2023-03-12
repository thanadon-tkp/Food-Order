//
//  NotificationView.swift
//  Food Ordering
//
//  Created by Thanadon Trakanpong on 8/3/2566 BE.
//

import SwiftUI

struct NotificationView: View {
    var body: some View {
        VStack {
            
            ScrollView(.vertical, showsIndicators: false) {
                
               Text("Notification")
                
            }
            .padding(.bottom, 40)
            
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
