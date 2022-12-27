//
//  ViewController.swift
//  SampleARKit
//
//  Created by Raghvendra Pacholi on 27/12/22.
//

import UIKit
import ARKit

class ViewController: UIViewController {
    
    @IBOutlet weak var sceneView: ARSCNView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addObject()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let config = ARWorldTrackingConfiguration()
        sceneView.session.run(config)
    }
    
    private func addObject() {
        let sampleCone = SCNCone(topRadius: 2.0, bottomRadius: 20.0, height: 30.0)
        let coneNode = SCNNode()
        coneNode.geometry = sampleCone
        coneNode.position = SCNVector3(0,0,-0.2)
        
        let scene = SCNScene()
        scene.rootNode.addChildNode(coneNode)
        sceneView.scene = scene
        
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        sceneView.session.pause()
    }


}

