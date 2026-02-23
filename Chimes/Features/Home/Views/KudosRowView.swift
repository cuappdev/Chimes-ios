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
                        ZStack {
                            // Layer 1 (glow)
                            RoundedRectangle(cornerRadius: 36)
                                .fill(glowFill)
                                .frame(width: 36, height: 36)
                                .blur(radius: 10)
                                .blur(radius: 20)

                            // Layer 2 (base)
                            RoundedRectangle(cornerRadius: 64)
                                .fill(baseFill)
                                .frame(width: 64, height: 64)

                            // Layer 3 (tint)
                            RoundedRectangle(cornerRadius: 64)
                                .fill(tintFill)
                                .frame(width: 64, height: 64)

                            // Content
                            Text(type.emoji)
                                .font(.custom("Inter", size: 36).weight(.medium))
                        }
                        .frame(width: 64, height: 64)
                    }
                    .buttonStyle(.plain)

                    // Auto spacing between buttons
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
