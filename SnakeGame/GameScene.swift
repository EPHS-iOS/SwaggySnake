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
        Snake.physicsBody?.applyImpulse(CGVector(dx: (arr.size.height*sin(arr.zRotation)), dy: (arr.size.height*cos(arr.zRotation))))
      }
    }
  }
  override func update(_ currentTime: CFTimeInterval){
    /* Called before each frame is rendered */
    cam.position.y = Snake.position.y
    cam.position.x=CGFloat(-2028.34)
    butt.position.y = Snake.position.y - 400
    butt2.position.y = Snake.position.y - 400
    blastOff.position.y = Snake.position.y - 400
    arr.position = Snake.position
  }
}
