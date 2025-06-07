//
//  IntroPageView.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import SwiftUI

struct IntroPageView: View {
    @Environment(\.managedObjectContext) private var viewContext
    @Binding var tabSelection: Int
    
    var body: some View {
        VStack{
            Text("Intro")
        Button(action: {
            withAnimation {
//                let collection = Collection.init(entity: Collection.entity(), insertInto: viewContext)
//                collection.name = "Collection"
//                collection.uuid = UUID()
//                let wishlist = Collection.init(entity: Collection.entity(), insertInto: viewContext)
//                wishlist.name = "Wish List"
//                wishlist.uuid = UUID()
//                do {
//                    try viewContext.save()
//                } catch  {
//                    print(error)
//                }
                tabSelection = 2
            }
        }, label: {
            Text("Begin Setup")
        })
        .buttonStyle(.borderedProminent)
        }
    }
}
