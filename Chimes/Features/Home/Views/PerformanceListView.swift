//
//  PerformanceListView.swift
//  Chimes
//
//  Created by Arielle Nudelman on 2/22/26.
//

import SwiftUI

struct PerformancesListView: View {
    let performances: [PerformanceSlot]

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Today’s Performances")
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.primaryText)

            VStack(spacing: 12) {
                ForEach(performances) { slot in
                    PerformanceRowView(slot: slot)
                }
            }
        }
        .padding(.horizontal, 21)
        .padding(.bottom, 22)
    }
}
