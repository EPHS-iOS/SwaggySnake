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
        
        let spring0 = SKPhysicsJointSpring.joint(withBodyA: bodys0.physicsBody!,
                                                bodyB: bodys1.physicsBody!,
                                                anchorA: bodys0.position,
                                                anchorB: bodys1.position)
        
        spring0.frequency = 0.5
        spring0.damping = 0.2
        
        let spring1 = SKPhysicsJointSpring.joint(withBodyA: bodys1.physicsBody!,
                                                bodyB: bodys2.physicsBody!,
                                                anchorA: bodys1.position,
                                                anchorB: bodys2.position)
        
        spring1.frequency = 0.5
        spring1.damping = 0.2
        
        let spring2 = SKPhysicsJointSpring.joint(withBodyA: bodys2.physicsBody!,
                                                bodyB: bodys3.physicsBody!,
                                                anchorA: bodys2.position,
                                                anchorB: bodys3.position)
        
        spring2.frequency = 0.5
        spring2.damping = 0.2
        
        let spring3 = SKPhysicsJointSpring.joint(withBodyA: bodys3.physicsBody!,
                                                bodyB: bodys4.physicsBody!,
                                                anchorA: bodys3.position,
                                                anchorB: bodys4.position)
        
        spring3.frequency = 0.5
        spring3.damping = 0.2
        
        let spring4 = SKPhysicsJointSpring.joint(withBodyA: bodys4.physicsBody!,
                                                bodyB: bodys5.physicsBody!,
                                                anchorA: bodys4.position,
                                                anchorB: bodys5.position)
        
        spring4.frequency = 0.5
        spring4.damping = 0.2
        
        let spring5 = SKPhysicsJointSpring.joint(withBodyA: bodys4.physicsBody!,
                                                bodyB: bodys5.physicsBody!,
                                                anchorA: bodys4.position,
                                                anchorB: bodys5.position)
        
        spring5.frequency = 0.5
        spring5.damping = 0.2
        
        let spring6 = SKPhysicsJointSpring.joint(withBodyA: bodys5.physicsBody!,
                                                bodyB: bodys6.physicsBody!,
                                                anchorA: bodys5.position,
                                                anchorB: bodys6.position)
        
        spring6.frequency = 0.5
        spring6.damping = 0.2
        
        let spring7 = SKPhysicsJointSpring.joint(withBodyA: bodys6.physicsBody!,
                                                bodyB: bodys7.physicsBody!,
                                                anchorA: bodys6.position,
                                                anchorB: bodys7.position)
        
        spring7.frequency = 0.5
        spring7.damping = 0.2
        
        let spring8 = SKPhysicsJointSpring.joint(withBodyA: bodys7.physicsBody!,
                                                bodyB: bodys8.physicsBody!,
                                                anchorA: bodys7.position,
                                                anchorB: bodys8.position)
        
        spring8.frequency = 0.5
        spring8.damping = 0.2
        
        let spring9 = SKPhysicsJointSpring.joint(withBodyA: bodys8.physicsBody!,
                                                bodyB: bodys9.physicsBody!,
                                                anchorA: bodys8.position,
                                                anchorB: bodys9.position)
        
        spring9.frequency = 0.5
        spring9.damping = 0.2
        
        let spring10 = SKPhysicsJointSpring.joint(withBodyA: bodys9.physicsBody!,
                                                bodyB: bodys10.physicsBody!,
                                                anchorA: bodys9.position,
                                                anchorB: bodys10.position)
        
        spring10.frequency = 0.5
        spring10.damping = 0.2
        
        let spring11 = SKPhysicsJointSpring.joint(withBodyA: bodys10.physicsBody!,
                                                bodyB: bodys11.physicsBody!,
                                                anchorA: bodys10.position,
                                                anchorB: bodys11.position)
        
        spring11.frequency = 0.5
        spring11.damping = 0.2
        
        let spring12 = SKPhysicsJointSpring.joint(withBodyA: bodys11.physicsBody!,
                                                bodyB: head.physicsBody!,
                                                anchorA: bodys11.position,
                                                anchorB: head.position)
        
        spring12.frequency = 0.5
        spring12.damping = 0.2
        
        let spring13 = SKPhysicsJointSpring.joint(withBodyA: head.physicsBody!,
                                                bodyB: eye.physicsBody!,
                                                anchorA: head.position,
                                                anchorB: eye.position)
        
        spring13.frequency = 0
        spring13.damping = 0
        
        let spring14 = SKPhysicsJointSpring.joint(withBodyA: head.physicsBody!,
                                                bodyB: mouth.physicsBody!,
                                                anchorA: head.position,
                                                anchorB: mouth.position)
        
        spring14.frequency = 0
        spring14.damping = 0
        
        /*
        scene!.physicsWorld.add(spring0)
        scene!.physicsWorld.add(spring1)
        scene!.physicsWorld.add(spring2)
        scene!.physicsWorld.add(spring3)
        scene!.physicsWorld.add(spring4)
        scene!.physicsWorld.add(spring5)
        scene!.physicsWorld.add(spring6)
        scene!.physicsWorld.add(spring7)
        scene!.physicsWorld.add(spring8)
        scene!.physicsWorld.add(spring9)
        scene!.physicsWorld.add(spring10)
        scene!.physicsWorld.add(spring11)
        scene!.physicsWorld.add(spring12)
        scene!.physicsWorld.add(spring13)
        scene!.physicsWorld.add(spring14)
      */
        
        
      
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        
        border.friction = 0
        border.restitution = 1
        
        self.physicsBody = border
    
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
       
        for touch in touches{
            
            let location = touch.location(in: self)
            
            head.run(SKAction.moveTo(x: location.x, duration: 0.201))
            eye.run(SKAction.moveTo(x: location.x, duration: 0.201))
            mouth.run(SKAction.moveTo(x: location.x, duration: 0.201))
            /*
            bodys0.run(SKAction.moveTo(x: location.x, duration: 0.201))
            bodys1.run(SKAction.moveTo(x: location.x, duration: 0.201))
            bodys2.run(SKAction.moveTo(x: location.x, duration: 0.201))
            bodys3.run(SKAction.moveTo(x: location.x, duration: 0.201))
            bodys4.run(SKAction.moveTo(x: location.x, duration: 0.201))
            bodys5.run(SKAction.moveTo(x: location.x, duration: 0.201))
            bodys6.run(SKAction.moveTo(x: location.x, duration: 0.201))
            bodys7.run(SKAction.moveTo(x: location.x, duration: 0.201))
            bodys8.run(SKAction.moveTo(x: location.x, duration: 0.201))
            bodys9.run(SKAction.moveTo(x: location.x, duration: 0.201))
            bodys10.run(SKAction.moveTo(x: location.x, duration: 0.201))
            bodys11.run(SKAction.moveTo(x: location.x, duration: 0.201))
             */
            head.run(SKAction.moveTo(y: location.y, duration: 0.201))
            eye.run(SKAction.moveTo(y: location.y, duration: 0.201))
            mouth.run(SKAction.moveTo(y: location.y, duration: 0.201))
            /*
            bodys0.run(SKAction.moveTo(y: location.y, duration: 0.201))
            bodys1.run(SKAction.moveTo(y: location.y, duration: 0.201))
            bodys2.run(SKAction.moveTo(y: location.y, duration: 0.201))
            bodys3.run(SKAction.moveTo(y: location.y, duration: 0.201))
            bodys4.run(SKAction.moveTo(y: location.y, duration: 0.201))
            bodys5.run(SKAction.moveTo(y: location.y, duration: 0.201))
            bodys6.run(SKAction.moveTo(y: location.y, duration: 0.201))
            bodys7.run(SKAction.moveTo(y: location.y, duration: 0.201))
            bodys8.run(SKAction.moveTo(y: location.y, duration: 0.201))
            bodys9.run(SKAction.moveTo(y: location.y, duration: 0.201))
            bodys10.run(SKAction.moveTo(y: location.y, duration: 0.201))
            bodys11.run(SKAction.moveTo(y: location.y, duration: 0.201))
 */
        }
    
    
    
}
}
