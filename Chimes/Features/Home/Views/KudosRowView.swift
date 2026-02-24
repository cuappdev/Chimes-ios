//
//  KudosRowView.swift
//  Chimes
//
//  Created by Arielle Nudelman on 2/22/26.
//

import SwiftUI

struct KudosRowView: View {
    let onTap: (KudosType) -> Void

    private let glowFill = Color.black.opacity(0.02)
    private let baseFill = Color.black.opacity(0.02)
    private let tintFill = Color(red: 0.69, green: 0.16, blue: 0.16).opacity(0.04)

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Send Kudos! 👏")
                .font(.custom("Inter", size: 18).weight(.semibold))
                .foregroundStyle(.primaryText)
                .padding(.horizontal, 21)

            HStack(spacing: 0) {
                Spacer().frame(width: 8)

                ForEach(Array(KudosType.allCases.enumerated()), id: \.element.id) { idx, type in
                    Button {
                        onTap(type)
                    } label: {
                        GlassCircle(size: 64) {
                            Text(type.emoji)
                                .font(.custom("Inter", size: 36).weight(.medium))
                        }
                    }
                    .buttonStyle(.plain)

                    if idx != KudosType.allCases.count - 1 {
                        Spacer(minLength: 0)
                    }
                }

                Spacer().frame(width: 8)
            }
            .padding(.horizontal, 21)
        }
    }
}
