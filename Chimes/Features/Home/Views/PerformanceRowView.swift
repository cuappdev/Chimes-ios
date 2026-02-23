//
//  PerformanceRowView.swift
//  Chimes
//
//  Created by Arielle Nudelman on 2/22/26.
//

import SwiftUI

struct PerformanceRowView: View {
    let slot: PerformanceSlot

    var body: some View {
        GlassCard {
            HStack {
                Text(slot.label)
                    .font(.system(size: 16, weight: .semibold))
                    .foregroundStyle(.primaryText)

                Spacer()

                Text(slot.timeRange)
                    .font(.system(size: 15))
                    .foregroundStyle(.secondaryText)
            }
        }
        .frame(maxWidth: .infinity)
    }
}
