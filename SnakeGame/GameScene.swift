//
//  GameScene.swift
//  SnakeGame
//
//  Created by 64003232 on 2/22/21.
import SpriteKit
import GameplayKit
class GameScene: SKScene {
  var Snake = SKSpriteNode()
  var butt = SKSpriteNode()
  var butt2 = SKSpriteNode()
  var blastOff = SKSpriteNode()
  var arr = SKSpriteNode()
  let cam = SKCameraNode()
  let player = SKSpriteNode()
  var hasSwag = false
  var originalSwagLocation = CGPoint()
  override func didMove(to view: SKView){
    butt = self.childNode(withName: "butt") as! SKSpriteNode
    butt2 = self.childNode(withName: "butt2") as! SKSpriteNode
    blastOff = self.childNode(withName: "blastOff") as! SKSpriteNode
    Snake = self.childNode(withName: "Snake") as! SKSpriteNode
    arr = self.childNode(withName: "arr") as! SKSpriteNode
    
    self.camera = cam
    let border = SKPhysicsBody(edgeLoopFrom: self.frame)
    border.friction = 0
    border.restitution = 1
    self.physicsBody = border
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
        if arr.zRotation == 0{
          let dx = arr.size.height*0
          let dy = arr.size.height*sin(90 + arr.zRotation)
          Snake.physicsBody?.applyImpulse(CGVector(dx: dx, dy: dy))
        } else{
          let dx = arr.size.height*cos(90 + arr.zRotation)
          let dy = arr.size.height*sin(90 + arr.zRotation)
          Snake.physicsBody?.applyImpulse(CGVector(dx: dx, dy: dy))
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
    //for touch in touches{
    //let location = touch.location(in: self)
    //Snake.run(SKAction.applyImpulse(CGVector(dx: 0.003, dy: 0.02), duration: 0.2))
  }
  /*
   override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
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
   }
   */
  override func update(_ currentTime: CFTimeInterval){
    /* Called before each frame is rendered */
    cam.position.y = Snake.position.y
    cam.position.x=CGFloat(-430)
    butt.position.y = Snake.position.y - 101.53
    butt.position.y = Snake.position.y - 400
    butt2.position.y = Snake.position.y - 400
    blastOff.position.y = Snake.position.y - 400
    arr.position = Snake.position
  }
}
