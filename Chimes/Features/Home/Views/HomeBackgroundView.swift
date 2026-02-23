//
//  HomeBackgroundView.swift
//  Chimes
//
//  Created by Arielle Nudelman on 2/22/26.
//

import SwiftUI

struct HomeBackgroundView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .topLeading) {

                LinearGradient(
                    colors: [.daytimeSky, .daytimeSlope],
                    startPoint: .top,
                    endPoint: .bottom
                )

                // Slope
                Image("SlopeDay")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 400, height: 594)
                    .offset(
                        x: (geo.size.width - 400) / 2,
                        y: 289
                    )

                // Tower
                Image("TowerOriginal")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 164, height: 224)
                    .offset(
                        x: geo.size.width - 29 - 164,
                        y: 165
                    )

            }
            .ignoresSafeArea()
        }
    }
}
