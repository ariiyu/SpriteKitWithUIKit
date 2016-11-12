//
//  LightScene.swift
//  SpriteKitWithUIKit
//
//  Created by Yusuke Ariyoshi on 2016/06/26.
//  Copyright © 2016年 Yusuke Ariyoshi. All rights reserved.
//

import UIKit
import SpriteKit

class LightScene: SKScene {
    
    let kFadeDuration = TimeInterval(1.3)
    
    var lightNode: SKEmitterNode!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
    }
    
    override func didMove(to view: SKView) {
        addPaper()
        showPaper()
    }
    
    override func willMove(from view: SKView) {
        lightNode.removeFromParent()
    }
    
    func addPaper(){
        let fileName = "Bokeh"
        let path = Bundle.main.path(forResource: fileName, ofType: "sks")!
        lightNode = NSKeyedUnarchiver.unarchiveObject(withFile: path) as! SKEmitterNode
        lightNode.position = CGPoint(x: self.size.width / 2, y: self.size.height / 2)
        lightNode.alpha = 0
        addChild(lightNode)
    }
    
    func showPaper(){
        let show = SKAction.fadeIn(withDuration: kFadeDuration)
        lightNode.run(show)
    }
}
