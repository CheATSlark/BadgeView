//
//  ContentView.swift
//  BadgeView
//
//  Created by jerry on 2021/7/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            BadgeView("111") {
                Image("pic")
            }
            BadgeView("111") {
                Image("pic")
            }
            
            BadgeView {
                Image("pic")
            }
            .badgeViewStyle(PointBadgeViewStyle())
        
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
