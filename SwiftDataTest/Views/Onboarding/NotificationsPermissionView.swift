//
//  NotificationsPermissionView.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import SwiftUI

struct NotificationsPermissionView: View {
    @Environment(\.dismiss) private var dismiss
    @Binding var tabSelection: Int
    var body: some View {
        VStack {
            Text("Notifications Permissions")
            Button(action: {
                withAnimation {
                    UserDefaultsHandler.setHasOpened(opened: true)
                    dismiss()
                }
            }, label: {
                Text("Done!")
            })
            .buttonStyle(.borderedProminent)
        }
    }
}

