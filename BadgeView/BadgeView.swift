//
//  BadgeView.swift
//  BadgeView
//
//  Created by jerry on 2021/7/12.
//

import SwiftUI

struct BadgeView<Background, Label, Content>: View where Background: View, Label: View, Content: View {
    
    @Environment(\.badgeViewStyle) private var style
    
    private var configuration: BadgeViewStyleConfiguration
    
    var body: some View {
        style.makeBody(configuration: configuration)
    }
}

extension BadgeView {
    
    init(_ titleKey: LocalizedStringKey, @ViewBuilder content: ()-> Content)
    where Background == EmptyView, Label == Text {
        self.configuration = BadgeViewStyleConfiguration(
            background: AnyView(Color.clear),
            label: AnyView(Text(titleKey)),
            content: AnyView(content())
        )
    }
    
    init(@ViewBuilder content: ()-> Content) where Background == EmptyView, Label == EmptyView{
        self.configuration = BadgeViewStyleConfiguration(
            background: AnyView(Color.red),
            content: AnyView(content())
        )
    }
    
}
