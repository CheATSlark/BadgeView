//
//  BadgeUI.swift
//  BadgeView
//
//  Created by jerry on 2021/7/12.
//

import SwiftUI

extension View {
    
    func badgeViewStyle<Style>(_ style: Style) -> some View where Style: BadgeViewStyle {
        environment(\.badgeViewStyle, AnyBadgeViewStyle(style))
    }
}
