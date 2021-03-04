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
    let cam = SKCameraNode()
    let player = SKSpriteNode()

    override func didMove(to view: SKView){


        Snake = self.childNode(withName: "Snake") as! SKSpriteNode
       
        self.camera = cam
        
      
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        
        border.friction = 0
        border.restitution = 1
        
        self.physicsBody = border
    
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
            
            for touch in touches{
                
                let location = touch.location(in: self)
                
                Snake.run(SKAction.applyImpulse(CGVector(dx: 0.003, dy: 0.02), duration: 0.2))
                
            }
    }
    override func update(_ currentTime: CFTimeInterval)
    {
        /* Called before each frame is rendered */
        cam.position.y = Snake.position.y
        cam.position.x=CGFloat(-430)
    }
        }
    
    


