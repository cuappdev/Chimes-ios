//
//  CircleIconButton.swift
//  Chimes
//
//  Created by Arielle Nudelman on 2/22/26.
//

import SwiftUI

struct CircleIconButton: View {
    
    let assetName: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            
            Image(assetName)
                .resizable()
                .scaledToFit()
                .frame(width: 22, height: 22)
                .frame(width: 44, height: 44)
                .background(
                    Circle()
                        .fill(Color.white.opacity(0.35))
                )
                .overlay(
                    Circle()
                        .stroke(Color.white.opacity(0.4), lineWidth: 1)
                )
        }
        .buttonStyle(.plain)
    }
}
