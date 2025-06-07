//
//  OnboardingView.swift
//  MTGCards
//
//  Created by Joseph Beaudoin on 1/13/25.
//


import SwiftUI

struct OnboardingView: View {
    @State private var tabSelection = 1
    var body: some View {
        TabView(selection: $tabSelection) {
            IntroPageView(tabSelection: $tabSelection).tag(1)
            DownloadDataView(tabSelection: $tabSelection).tag(2)
            NotificationsPermissionView(tabSelection: $tabSelection).tag(3)
        }
        .tabViewStyle(.page)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
