//
//  GameScene.swift
//  SnakeGame
//
//  Created by 64003232 on 2/22/21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var bodys0 = SKSpriteNode()
    var bodys1 = SKSpriteNode()
    var bodys2 = SKSpriteNode()
    var bodys3 = SKSpriteNode()
    var bodys4 = SKSpriteNode()
    var bodys5 = SKSpriteNode()
    var bodys6 = SKSpriteNode()
    var bodys7 = SKSpriteNode()
    var bodys8 = SKSpriteNode()
    var bodys9 = SKSpriteNode()
    var bodys10 = SKSpriteNode()
    var bodys11 = SKSpriteNode()
    var head = SKSpriteNode()
    var eye = SKSpriteNode()
    var mouth = SKSpriteNode()

    override func didMove(to view: SKView){


        bodys0 = self.childNode(withName: "bodys0") as! SKSpriteNode
        bodys1 = self.childNode(withName: "bodys1") as! SKSpriteNode
        bodys2 = self.childNode(withName: "bodys2") as! SKSpriteNode
        bodys3 = self.childNode(withName: "bodys3") as! SKSpriteNode
        bodys4 = self.childNode(withName: "bodys4") as! SKSpriteNode
        bodys5 = self.childNode(withName: "bodys5") as! SKSpriteNode
        bodys6 = self.childNode(withName: "bodys6") as! SKSpriteNode
        bodys7 = self.childNode(withName: "bodys7") as! SKSpriteNode
        bodys8 = self.childNode(withName: "bodys8") as! SKSpriteNode
        bodys9 = self.childNode(withName: "bodys9") as! SKSpriteNode
        bodys10 = self.childNode(withName: "bodys10") as! SKSpriteNode
        bodys11 = self.childNode(withName: "bodys11") as! SKSpriteNode
        head = self.childNode(withName: "bodys12") as! SKSpriteNode
        eye = self.childNode(withName: "eye") as! SKSpriteNode
        mouth = self.childNode(withName: "mouth") as! SKSpriteNode
      
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        
        border.friction = 0
        border.restitution = 1
        
        self.physicsBody = border
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
            
            
            
        }
    
    
    
}
