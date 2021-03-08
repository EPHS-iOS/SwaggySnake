//
//  GameScene.swift
//  SnakeGame
//
//  Created by 64003232 on 2/22/21.
//
import SpriteKit
import GameplayKit
class GameScene: SKScene {
    
    var theSprite:SKSpriteNode = SKSpriteNode()
    var point1:CGPoint = CGPoint.zero
    var point2:CGPoint = CGPoint.zero
    var Snake = SKSpriteNode()
    
    let cam = SKCameraNode()
    let player = SKSpriteNode()
    
    var hasSwag = false
    var originalSwagLocation = CGPoint()
    
    override func didMove(to view: SKView){
        Snake = self.childNode(withName: "Snake") as! SKSpriteNode
        self.camera = cam
        originalSwagLocation = Snake.position
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0
        border.restitution = 0
        self.physicsBody = border
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !hasSwag{
            if let touch = touches.first{
                let touchLocation = touch.location(in: self)
                let touched = nodes(at: touchLocation)
                if !touched.isEmpty{
                    for node in touched{
                        if let sprite = node as? SKSpriteNode{
                            if sprite == Snake{
                                Snake.position = touchLocation
                            }
                        }
                    }
                }
            }
        }
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
                                let dx = originalSwagLocation.x - touchLocation.x
                                let dy = originalSwagLocation.y - touchLocation.y
                                let impulse = CGVector(dx: dx, dy: dy)
                                Snake.physicsBody?.applyImpulse(impulse)
                                hasSwag = false
                            }
                        }
                    }
                }
            }
        }
        //for touch in touches{
        //let location = touch.location(in: self)
        //Snake.run(SKAction.applyImpulse(CGVector(dx: 0.003, dy: 0.02), duration: 0.2))
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !hasSwag{
            if let touch = touches.first{
                let touchLocation = touch.location(in: self)
                let touched = nodes(at: touchLocation)
                if !touched.isEmpty{
                    for node in touched{
                        if let sprite = node as? SKSpriteNode{
                            if sprite == Snake{
                                Snake.position = touchLocation
                            }
                        }
                    }
                }
            }
        }
    }
    override func update(_ currentTime: CFTimeInterval){
        /* Called before each frame is rendered */
        cam.position.y = Snake.position.y
        cam.position.x=CGFloat(-430)
    }
}
