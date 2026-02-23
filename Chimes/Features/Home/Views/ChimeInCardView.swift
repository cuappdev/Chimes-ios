//
//  ChimeInCardView.swift
//  Chimes
//
//  Created by Arielle Nudelman on 2/22/26.
//

import SwiftUI

struct ChimeInCardView: View {
    @Binding var guessText: String
    let onGuessMore: () -> Void
    let onSubmit: () -> Void

    var body: some View {
        GlassCard {
            VStack(alignment: .leading, spacing: 7) {
                Text("🎉 Time to chime in!")
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundStyle(.primaryText)

                Text("Guess the song that’s currently playing")
                    .font(.system(size: 14))
                    .foregroundStyle(.secondaryText)

                RoundedTextField(placeholder: "enter a song...", text: $guessText)

                Button(action: onGuessMore) {
                    Text("+  guess more")
                        .font(.system(size: 13, weight: .semibold))
                        .foregroundStyle(.secondaryText)
                }
                .buttonStyle(.plain)

                HStack {
                    Spacer()
                    Button(action: onSubmit) {
                        Text("submit!")
                            .font(.system(size: 14, weight: .semibold))
                            .padding(.horizontal, 18)
                            .padding(.vertical, 10)
                            .background(Color.white.opacity(0.65))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                    .buttonStyle(.plain)
                }
            }
        }
        .padding(.horizontal, 21)
    }
}
