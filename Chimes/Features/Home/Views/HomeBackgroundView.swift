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

                // Sky background (replaces gradient)
                Image("SkyDay")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: 411)
                    .clipped()
                    .offset(x: 0, y: 0)
                
                // Tower placement values
                let towerW: CGFloat = 164
                let towerX = geo.size.width - 29 - towerW
                let towerY: CGFloat = 165

                // Notes emitter
                ClocktowerNotesEmitterView(
                    spawnPoint: CGPoint(x: towerX + 118, y: towerY + 128),
                    topBoundaryEnd: CGPoint(x: 28, y: 70),
                    bottomBoundaryEnd: CGPoint(x: 12, y: 520),
                    spawnInterval: 0.55
                )

                // Slope
                Image("SlopeDay")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geo.size.width, height: 594)
                    .clipped()
                    .offset(x: 0, y: 289)
                
                // TreesFront
                Image("TreesFront")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 172.00005, height: 102.7138)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                    .offset(
                        x: -17,
                        y: 324
                    )

                // TreesBack
                Image("TreesBack")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 68.00006, height: 58.7138)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 1)
                    .offset(
                        x: geo.size.width - 320 - 68.00006, // right = 320
                        y: 346
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
                    .shadow(color: .black.opacity(0.13), radius: 2, x: 1, y: 2)

            }
            .ignoresSafeArea()
        }
    }
}
