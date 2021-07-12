//
//  BadgeViewStyle.swift
//  BadgeView
//
//  Created by jerry on 2021/7/12.
//

import SwiftUI

struct BadgeViewStyleConfiguration {
    
    var background: AnyView?
    
    var label: AnyView?
    
    var content: AnyView?
}


protocol BadgeViewStyle{
    
    associatedtype Body: View
    
    func makeBody(configuration: Configuation) -> Body
    
    typealias Configuation = BadgeViewStyleConfiguration
}


extension BadgeViewStyle {
    func eraseToAnyView(configuration: Configuation) -> AnyView {
        AnyView(makeBody(configuration: configuration))
    }
}


struct AnyBadgeViewStyle: BadgeViewStyle {
    
    private let _makeBody: (Configuation) -> AnyView
    
    init<Style>(_ style: Style) where Style: BadgeViewStyle {
        self._makeBody = style.eraseToAnyView
    }
    
    func makeBody(configuration: Configuation) -> AnyView {
        _makeBody(configuration)
    }
}
