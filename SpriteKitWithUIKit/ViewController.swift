//
//  ViewController.swift
//  SpriteKitWithUIKit
//
//  Created by Yusuke Ariyoshi on 2016/06/26.
//  Copyright © 2016年 Yusuke Ariyoshi. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    @IBOutlet weak var skView: SKView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        showParticle()
    }

    // MARK: Sprite Kit.
    
    func showParticle() {
        print(skView.frame.size)
        let scene = LightScene(size: skView.frame.size)
        skView.ignoresSiblingOrder = true
        scene.scaleMode = .AspectFill
        skView.presentScene(scene)
    }
}

