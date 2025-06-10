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
    @State private var cards: [Card] = []
    
    private func fetchCards() {
        var descriptor = FetchDescriptor<Card>(predicate:
                                               // #Predicate<Card> { c in c.name.localizedStandardContains("Sliver")}
                                               nil
                                               , sortBy: [SortDescriptor(\Card.name)]
        )
        descriptor.propertiesToFetch = [\Card.name]
        descriptor.relationshipKeyPathsForPrefetching = [\Card.set] // Prefetch 'set'
        do {
            cards = try modelContext.fetch(descriptor)
        } catch {
            print("Failed to fetch cards: \(error)")
        }
    }

    var body: some View {
       NavigationStack {
           List(cards) { card in
               VStack(alignment: .leading) {
                   Text(card.name)
//                   Text(card.set?.name ?? "Unknown Set")
//                       .font(.caption)
               }
               
           }
           .listRowSeparator(.hidden)
           .navigationTitle("\(cards.count) Cards")
        }
       .fullScreenCover(isPresented: $showingOnboarding) {
           OnboardingView()
       }
        .onAppear{
            if !hasOpenedBefore {
                showingOnboarding.toggle()
            }
            fetchCards()
        }
    }


}
