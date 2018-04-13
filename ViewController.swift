//
//  ViewController.swift
//  ArgumentApp
//
//  Created by Boanca Razvan on 12/04/2018.
//  Copyright © 2018 Arkit simple app. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet var sceneView: ARSCNView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        opb()
        
        let label = UILabel()
        label.text = "Tine camera drept!"
        label.frame = CGRect(x: 10.0, y: 1.0, width: 20.0, height: 20.0)
    }
    func opb(){
        
        let scene = SCNScene()
        sceneView.scene = scene
        let material = SCNMaterial()
        let position = SCNVector3(0, 0, -3)
        let sphere = SCNSphere(radius: 1)
        let nodeSph = SCNNode()
        material.diffuse.contents = UIImage(named: "earthTexture")
        sphere.materials = [material]
        nodeSph.geometry = sphere
        nodeSph.position = position
        
        scene.rootNode.addChildNode(nodeSph)
        print("Tap")
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Create a session configuration
        let configuration = ARWorldTrackingConfiguration()

        // Run the view's session
        sceneView.session.run(configuration)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        // Pause the view's session
        sceneView.session.pause()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    
    

    
    func session(_ session: ARSession, didFailWithError error: Error) {
        // Present an error message to the user
        
    }
    
    func sessionWasInterrupted(_ session: ARSession) {
        // Inform the user that the session has been interrupted, for example, by presenting an overlay
        print("Error!!")
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
    
}
