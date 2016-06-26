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
    
    let kFadeDuration = NSTimeInterval(1.3)
    
    var lightNode: SKEmitterNode!
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(size: CGSize) {
        super.init(size: size)
    }
    
    override func didMoveToView(view: SKView) {
        addPaper()
        showPaper()
    }
    
    override func willMoveFromView(view: SKView) {
        lightNode.removeFromParent()
    }
    
    func addPaper(){
        let fileName = "Bokeh"
        let path = NSBundle.mainBundle().pathForResource(fileName, ofType: "sks")!
        lightNode = NSKeyedUnarchiver.unarchiveObjectWithFile(path) as! SKEmitterNode
        lightNode.position = CGPointMake(self.size.width / 2, self.size.height / 2)
        lightNode.alpha = 0
        addChild(lightNode)
    }
    
    func showPaper(){
        let show = SKAction.fadeInWithDuration(kFadeDuration)
        lightNode.runAction(show)
    }
}
