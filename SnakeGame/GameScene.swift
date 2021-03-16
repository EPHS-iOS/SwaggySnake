//
//  GameScene.swift
//  SnakeGame
//
//  Created by 64003232 on 2/22/21.
import SpriteKit
import GameplayKit
class GameScene: SKScene {
<<<<<<< Updated upstream
    
=======
>>>>>>> Stashed changes
    var Snake = SKSpriteNode()
    var butt = SKSpriteNode()
    var butt2 = SKSpriteNode()
    var blastOff = SKSpriteNode()
    var arr = SKSpriteNode()
    let cam = SKCameraNode()
    let player = SKSpriteNode()
    var hasSwag = false
    var originalSwagLocation = CGPoint()
<<<<<<< Updated upstream
    
    override func didMove(to view: SKView){
        
=======
    var butpress = false
    var but2press = false
    var blpress = false
    
    override func didMove(to view: SKView){
>>>>>>> Stashed changes
        butt = self.childNode(withName: "butt") as! SKSpriteNode
        butt2 = self.childNode(withName: "butt2") as! SKSpriteNode
        blastOff = self.childNode(withName: "blastOff") as! SKSpriteNode
        Snake = self.childNode(withName: "Snake") as! SKSpriteNode
        arr = self.childNode(withName: "arr") as! SKSpriteNode
<<<<<<< Updated upstream
        
=======
>>>>>>> Stashed changes
        self.camera = cam
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0
        border.restitution = 1
        self.physicsBody = border
<<<<<<< Updated upstream
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !hasSwag{
            if let touch = touches.first{
                let touchLocation = touch.location(in: self)
                let touched = nodes(at: touchLocation)
                if !touched.isEmpty{
                    for node in touched{
                        if let sprite = node as? SKSpriteNode{
                            if sprite == Snake{
                                let dx = (originalSwagLocation.x - touchLocation.x)/2.5
                                let dy = (originalSwagLocation.y - touchLocation.y)*25
                                let impulse = CGVector(dx: dx, dy: dy)
                                Snake.physicsBody?.applyImpulse(impulse)
                                hasSwag = false
                            }
                        }
                    }
                }
            }
        }
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch in touches {
            
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            
            if touchedNode == butt{
                
                arr.zRotation = arr.zRotation + 0.2
                
            } else if touchedNode == butt2{
                
                arr.zRotation = arr.zRotation - 0.2
                
            } else if touchedNode == blastOff{
                
                let dx = arr.size.height*cos(90 + arr.zRotation)
                let dy = arr.size.height*sin(90 + arr.zRotation) * 7
                
                Snake.physicsBody?.applyImpulse(CGVector(dx: dx, dy: dy))
                
            }
            
        }
        
    }
    
    override func update(_ currentTime: CFTimeInterval){
        
        /* Called before each frame is rendered */
        cam.position.y = Snake.position.y
        cam.position.x=CGFloat(-430)
=======
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touche = touches.first!
        
        if butt.contains(touche.location(in: self)){
            
            butpress = true
            
        }
        
        if butt2.contains(touche.location(in: self)){
            
            but2press = true
            
        }
        
        if blastOff.contains(touche.location(in: self)){
            
            blpress = true
            
        }
        
        /*
         
         for touch in touches {
         let location = touch.location(in: self)
         let touchedNode = atPoint(location)
         if touchedNode == butt{
         arr.zRotation = arr.zRotation + 0.2
         } else if touchedNode == butt2{
         arr.zRotation = arr.zRotation - 0.2
         } else if touchedNode == blastOff{
         Snake.physicsBody?.applyImpulse(CGVector(dx: (arr.size.height*sin(-arr.zRotation)), dy: (arr.size.height*cos(-arr.zRotation))))
         }
         }
         */
        
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        let touch = touches.first!
        
        if butt.contains(touch.location(in: self)){
            
            butpress = false
            
        }
        
        if butt2.contains(touch.location(in: self)){
            
            but2press = false
            
        }
        
        if blastOff.contains(touch.location(in: self)){
            
            Snake.physicsBody?.applyImpulse(CGVector(dx: (arr.size.height*sin(-arr.zRotation)), dy: (arr.size.height*cos(-arr.zRotation))))
            
            blpress = false
            
        }
        
    }
    
    override func update(_ currentTime: CFTimeInterval){
        /* Called before each frame is rendered */
        
        if butpress == true{
            
            arr.zRotation = arr.zRotation + 0.02
            
        }
        
        if but2press == true{
            
            arr.zRotation = arr.zRotation - 0.02
            
        }
        
        cam.position.y = Snake.position.y
        cam.position.x=CGFloat(-2028.34)
>>>>>>> Stashed changes
        butt.position.y = Snake.position.y - 400
        butt2.position.y = Snake.position.y - 400
        blastOff.position.y = Snake.position.y - 400
        arr.position = Snake.position
<<<<<<< Updated upstream
        
    }
=======
    }
    
>>>>>>> Stashed changes
}

