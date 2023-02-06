//
//  ContentView.swift
//  ipod-ARTEST02
//
//  Created by Paul MacKinnon on 19/01/2023.
//

import SwiftUI
import RealityKit

struct ContentView : View {
    var body: some View {
        return ARViewContainer().edgesIgnoringSafeArea(.all)
    }
}

struct ARViewContainer: UIViewRepresentable {
    
    func makeUIView(context: Context) -> ARView {
        
        let arView = ARView(frame: .zero)
        
        // Load the "Box" scene from the "Experience" Reality File
//        let boxAnchor = try! Experience.loadBox()
        
        let cakeAnchor = try! CupcakeDali.loadScene()
        let tvAnchor = try! CupcakeDali.loadScene1()
        let box01Anchor = try! CupcakeDali.loadScene2()
        let miniAnchor = try! CupcakeDali.loadScene3()
        
        let planeToyAnchore = try! Toys01.loadScene() ////////
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(cakeAnchor)
        arView.scene.anchors.append(tvAnchor)
        arView.scene.anchors.append(box01Anchor)
        arView.scene.anchors.append(miniAnchor)
        
        
        arView.scene.anchors.append(planeToyAnchore)  ////////

        
        return arView
        
    }
    
    func updateUIView(_ uiView: ARView, context: Context) {}
    
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
