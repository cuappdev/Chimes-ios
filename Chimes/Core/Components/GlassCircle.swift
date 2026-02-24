//
//  GlassCircle.swift
//  Chimes
//
//  Created by Arielle Nudelman on 2/24/26.
//

import SwiftUI

struct GlassCircle<Content: View>: View {
    let size: CGFloat
    let content: Content

    init(size: CGFloat = 64, @ViewBuilder content: () -> Content) {
        self.size = size
        self.content = content()
    }

    var body: some View {
        ZStack {
            Circle()
                .fill(.ultraThinMaterial)
                .overlay(Circle().fill(Color.white.opacity(0.14)))
                .overlay(
                    Circle()
                        .stroke(Color.white.opacity(0.35), lineWidth: 1)
                )
                .overlay(
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [
                                    Color.white.opacity(0.30),
                                    Color.white.opacity(0.08),
                                    Color.clear
                                ],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .blendMode(.softLight)
                )

            content
        }
        .frame(width: size, height: size)
        .shadow(color: Color.black.opacity(0.10), radius: 8, x: 0, y: 6)
    }
}
