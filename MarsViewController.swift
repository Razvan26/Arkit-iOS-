import UIKit
import SceneKit
import ARKit

class MarsViewController: UIViewController, ARSCNViewDelegate {
    
    @IBOutlet var sceneView: ARSCNView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let configuration = ARWorldTrackingConfiguration()
        configuration.planeDetection = .horizontal
        configuration.isAutoFocusEnabled = true
        sceneView.session.run(configuration)
    }
    
    @IBAction func sbtn(_ sender: Any) {
        let sphereMars = SCNSphere(radius: 0.4)
        let mars = SCNNode()
        mars.geometry = sphereMars
        let materialMars = SCNMaterial()
        materialMars.diffuse.contents = UIImage(named: "marsTexture")
        sphereMars.materials = [materialMars]
        sceneView.scene.rootNode.addChildNode(mars)
 }
}
