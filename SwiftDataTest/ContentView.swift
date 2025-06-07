//
//  ContentView.swift
//  SwiftDataTest
//
//  Created by Joseph Beaudoin on 6/6/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @AppStorage("hasopenedbefore", store: UserDefaults.standard) var hasOpenedBefore = false
    @State private var showingOnboarding = false
    @Query(sort: \Card.name) private var cards:  [Card]
    
//    @Query(filter: #Predicate<Card> { c in
//        c.name.localizedStandardContains("Sliver")
//    }, sort: \Card.name) private var cards: [Card]

    var body: some View {
       NavigationStack {
           List(cards) { card in
               VStack(alignment: .leading) {
                   Text(card.name)
                   Text(card.set?.name ?? "")
                       .font(.caption)
               }
           }
           .navigationTitle(Text("\(cards.count) Cards"))
        }
       .fullScreenCover(isPresented: $showingOnboarding) {
           OnboardingView()
       }
        .onAppear{
            if !hasOpenedBefore {
                showingOnboarding.toggle()
            }
        }
    }


}

