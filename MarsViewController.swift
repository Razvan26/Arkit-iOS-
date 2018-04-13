import UIKit
import SceneKit
import ARKit

class MarsViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set the view's delegate
        sceneView.delegate = self
        
        // Show statistics such as fps and timing information
        sceneView.showsStatistics = true
        
        opb()
    }
    func opb(){
        
        let scene = SCNScene()
        sceneView.scene = scene
        let materialMars = SCNMaterial()
        let position = SCNVector3(0, 0, -2)
        let sphere = SCNSphere(radius: 0.8)
        let nodeSph = SCNNode()
        materialMars.diffuse.contents = UIImage(named: "marsTexture")
        sphere.materials = [materialMars]
        nodeSph.geometry = sphere
        nodeSph.position = position
        
        scene.rootNode.addChildNode(nodeSph)
        print("Mars loading")
        
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
        
    }
    
    func sessionInterruptionEnded(_ session: ARSession) {
        // Reset tracking and/or remove existing anchors if consistent tracking is required
        
    }
    
}
