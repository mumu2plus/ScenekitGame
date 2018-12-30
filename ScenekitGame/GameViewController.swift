//
//  GameViewController.swift
//  ScenekitGame
//
//  Created by 加加林 on 2018/12/30.
//  Copyright © 2018 MuMu Games. All rights reserved.
//

import UIKit
import QuartzCore
import SceneKit

class GameViewController: UIViewController {
    
    var gameSCNScene: GameSCNScene!

    override func viewDidLoad() {
        super.viewDidLoad()
        let scnView = view as! SCNView
        gameSCNScene = GameSCNScene(currentview: scnView)
    }
    
    @objc
    func handleTap(_ gestureRecognize: UIGestureRecognizer) {
       
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    
}
