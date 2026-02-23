//
//  HomeView.swift
//  Chimes
//
//  Created by Arielle Nudelman on 2/22/26.
//

import SwiftUI

struct HomeView: View {
    @State private var vm = HomeViewModel()

    var body: some View {
        ZStack {
            HomeBackgroundView()

            ScrollView(showsIndicators: false) {
                VStack(spacing: 18) {
                    HomeHeaderView(
                        username: vm.username,
                        onMusic: { vm.openMusic() },
                        onRSVP: { vm.openRSVP() }
                    )

                    Spacer().frame(height: 305)

                    ChimeInCardView(
                        guessText: $vm.guessText,
                        onGuessMore: { vm.guessMore() },
                        onSubmit: { vm.submitGuess() }
                    )

                    KudosRowView { vm.tapKudos($0) }

                    PerformancesListView(performances: vm.performances)
                }
                .padding(.top, 95)
                .padding(.bottom, 45)
            }
            .ignoresSafeArea(.container, edges: .top)
        }
    }
}
