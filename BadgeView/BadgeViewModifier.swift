//
//  BadgeViewModifier.swift
//  BadgeView
//
//  Created by jerry on 2021/7/12.
//

import SwiftUI

struct BadgeViewModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        ZStack {
            content
        }
    }
}
