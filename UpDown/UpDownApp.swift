//
//  UpDownApp.swift
//  UpDown
//
//  Created by Raheem Lawal on 2/15/24.
//

import SwiftUI

@main
struct UpDownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
