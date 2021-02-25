//
//  GameScene.swift
//  SnakeGame
//
//  Created by 64003232 on 2/22/21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var Snake = SKSpriteNode()
    

    override func didMove(to view: SKView){


        Snake = self.childNode(withName: "Snake") as! SKSpriteNode
       
        
        
      
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        
        border.friction = 0
        border.restitution = 1
        
        self.physicsBody = border
    
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        for touch in touches{
            
            let location = touch.location(in: self)
            
          
        }
    
    
    
}
}
