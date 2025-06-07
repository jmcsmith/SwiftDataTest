//
//  SwiftDataTestApp.swift
//  SwiftDataTest
//
//  Created by Joseph Beaudoin on 6/6/25.
//

import SwiftUI
import SwiftData

@main
struct SwiftDataTestApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Set.self,
            Card.self,
//            Token.self,
            ForeignData.self,
            Identifiers.self,
            LeadershipSkills.self,
            PurchaseUrls.self,
            RelatedCards.self,
            Ruling.self,
            Translations.self,
            CardType.self,
            SuperType.self,
            SubType.self,
            Keyword.self,
            Legalities.self,
            Variation.self,
            //deck
            Deck.self,
            DeckCard.self,
            CardCollection.self,
            CollectionCard.self
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
