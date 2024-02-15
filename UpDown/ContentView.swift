//
//  ContentView.swift
//  UpDown
//
//  Created by Raheem Lawal on 2/15/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {

    @State private var showImmersiveSpace = false
    @State private var immersiveSpaceIsShown = false

    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    @State private var counter = 0
    @State private var username: String = ""
    
    func startGame() {
        print("started")
    }
    
    func incrementCounter() {
        counter = counter + 1
        print("incremented")
    }
    func decrementCounter() {
        counter = counter - 1
        print("decremented")
    }

    var body: some View {
        VStack {
            
            Text("Up & Down!")
                .fontWeight(.black)
                .font(.system(size: 55))
                .padding()
            
            Button(action: incrementCounter, label: {
                Text("Increment")
                    .fontWeight(.heavy)
                    .font(.system(size: 40))
            })
            .frame(minWidth: 500, minHeight: 100)
            .background(.green)
            .cornerRadius(15)
            .padding()
            
            Button(action: decrementCounter, label: {
                Text("Decrement")
                    .fontWeight(.heavy)
                    .font(.system(size: 40))
            })
            .frame(minWidth: 500, minHeight: 100)
            .background(.red)
            .cornerRadius(15)
            .padding()
            
            Text("\(counter)")
                .fontWeight(.black)
                .font(.system(size: 75))
        }
        /*
        .task {
            await openImmersiveSpace(id: "ImmersiveSpace")
        }
        */
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
