//
//  GlassCard.swift
//  Chimes
//
//  Created by Arielle Nudelman on 2/22/26.
//

import SwiftUI

struct GlassCard<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        content
            .padding(.vertical, 14)
            .padding(.horizontal, 22)
            .background(Color.white.opacity(0.25))
            .overlay(
                RoundedRectangle(cornerRadius: 12)
//                    .stroke(DS.Colors.cardStroke, lineWidth: 1)
            )
            .clipShape(RoundedRectangle(cornerRadius: 12))
//            .shadow(color: Color.black.opacity(DS.Shadow.soft.opacity),
//                    radius: DS.Shadow.soft.radius,
//                    x: 0,
//                    y: DS.Shadow.soft.y)
    }
}
