//
//  BadgeViewEnvironmentKey.swift
//  BadgeView
//
//  Created by jerry on 2021/7/12.
//

import SwiftUI

extension EnvironmentValues {
    
    var badgeViewStyle: AnyBadgeViewStyle {
        get { self[BadgeViewEnviromentKey] }
        set { self[BadgeViewEnviromentKey] = newValue }
    }
}

struct BadgeViewEnviromentKey: EnvironmentKey {
    static var defaultValue = AnyBadgeViewStyle(DefaultBadgeViewStyle())
}
