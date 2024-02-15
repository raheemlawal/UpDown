//
//  ImmersiveView.swift
//  UpDown
//
//  Created by Raheem Lawal on 2/15/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    var body: some View {
        RealityView { content in
            // Add the initial RealityKit content
            let ballOne = ModelEntity(
                mesh: .generateBox(size: 0.1),
                materials: [SimpleMaterial(color: .white, isMetallic: true
            )])
            ballOne.scale = [2, 2, 2]
            ballOne.position.y = 1
            ballOne.position.z = 0.25
            
            content.add(ballOne)
            
            let ballTwo = ModelEntity(
                mesh: .generateSphere(radius: 0.1),
                materials: [SimpleMaterial(color: .white, isMetallic: true
            )])
            ballTwo.scale = [2, 2, 2]
            ballTwo.position.y = 1
            ballTwo.position.z = 0.25
            ballTwo.position.x = 0.5
            
            content.add(ballTwo)
            
            let ballThree = ModelEntity(
                mesh: .generateCone(height: 1, radius: 0.1),
                materials: [SimpleMaterial(color: .white, isMetallic: true
            )])
            ballThree.scale = [2, 2, 2]
            ballThree.position.y = 1
            ballThree.position.z = 0.25
            ballThree.position.x = -0.5
            
            content.add(ballThree)
        }
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
