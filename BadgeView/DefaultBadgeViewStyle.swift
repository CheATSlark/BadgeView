//
//  DefaultBadgeViewStyle.swift
//  BadgeView
//
//  Created by jerry on 2021/7/12.
//

import SwiftUI

struct DefaultBadgeViewStyle: BadgeViewStyle {
    init() {
    }
    
    func makeBody(configuration: Configuation) -> some View {
        DefaultBadgeView(background: configuration.background, label: configuration.label, content: configuration.content)
    }
    
    struct DefaultBadgeView: View {
        let background: AnyView?
        let label: AnyView?
        let content: AnyView?
        
        var body: some View {
            ZStack(alignment:.topTrailing){
                content
                label
                    .font(.system(size: 10))
                    .foregroundColor(.red)
                    .padding([.leading, .trailing], 5)
                    .frame(height: 16)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.red,lineWidth: 1)
                    )
                    .offset(x: 8, y: -8)
            }
            
        }
    }
    
}

struct PointBadgeViewStyle: BadgeViewStyle {
    init() {}
    
    func makeBody(configuration: Configuation) -> some View {
        PointBadgeView(background: configuration.background, label: configuration.label, content: configuration.content)
    }
    
    struct PointBadgeView: View {
        let background: AnyView?
        let label: AnyView?
        let content: AnyView?
        
        var body: some View {
            ZStack(alignment:.topTrailing){
                content
                RoundedRectangle(cornerRadius: 3)
                    .fill(Color.red)
                    .frame(width:6, height: 6)
            }
            
        }
    }
}
