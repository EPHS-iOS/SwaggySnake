//
//  GameScene.swift
//  SnakeGame
//
//  Created by 64003232 on 2/22/21.
import SpriteKit
import GameplayKit
class GameScene: SKScene, SKPhysicsContactDelegate {
  var gameOver = false
  var Snake = SKSpriteNode()
  var Sun = SKSpriteNode()
  var butt = SKSpriteNode()
  var SkyGround0 = SKSpriteNode()
  var Spaceground = SKSpriteNode()
  var butt2 = SKSpriteNode()
  var blastOff = SKSpriteNode()
  var arr = SKSpriteNode()
  let cam = SKCameraNode()
  var count = 0
  var count1 = 0

  var hasSwag = false
  var originalSwagLocation = CGPoint()
  var butpress = false
  var but2press = false
  var blpress = false
 
  override func didMove(to view: SKView){
    physicsWorld.contactDelegate = self
    
    butt = self.childNode(withName: "butt") as! SKSpriteNode
    butt2 = self.childNode(withName: "butt2") as! SKSpriteNode
    blastOff = self.childNode(withName: "blastOff") as! SKSpriteNode
    
    SkyGround0 = self.childNode(withName: "SkyGround0") as! SKSpriteNode
    Spaceground = self.childNode(withName: "Spaceground") as! SKSpriteNode
    
    Snake = self.childNode(withName: "Snake") as! SKSpriteNode
    Snake.physicsBody = SKPhysicsBody(texture: Snake.texture!, size: Snake.size)
    Snake.physicsBody?.friction=0.7
    Snake.physicsBody?.velocity.dy=0
    Snake.physicsBody?.allowsRotation = false
    
    Sun = self.childNode(withName: "Sun") as! SKSpriteNode
   
    
    
    arr = self.childNode(withName: "arr") as! SKSpriteNode
    self.camera = cam
    let border = SKPhysicsBody(edgeLoopFrom: self.frame)
    border.friction = 0
    border.restitution = 1
    self.physicsBody = border
  }
    
    func changeSkyGround() {
        if count==0{
            SkyGround0.position.x = -2031.085
            SkyGround0.position.y = 3958.704
            SkyGround0.size.width = 659.044
            SkyGround0.size.height = 82.312
            SkyGround0.physicsBody = SKPhysicsBody(texture: SkyGround0.texture!, size: SkyGround0.size)
            SkyGround0.physicsBody?.pinned = true
            SkyGround0.physicsBody?.allowsRotation = false
            count=1
        }
    }
    
    func changeSpaceGround(){
        if count1==0{
            Spaceground.position.x = -2031.094
            Spaceground.position.y = 9997.439
            Spaceground.size.width = 659.063
            Spaceground.size.height = 75
            Spaceground.physicsBody = SKPhysicsBody(texture: Spaceground.texture!, size: Spaceground.size)
            Spaceground.physicsBody?.pinned = true
            Spaceground.physicsBody?.allowsRotation = false
            count1=1
        }
    }
    
    func collisionBetween(Snake: SKNode, Sun: SKNode) {
       
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
        Snake.physicsBody?.applyImpulse(CGVector(dx: (arr.size.height*sin(-arr.zRotation)), dy: (arr.size.height*cos(-arr.zRotation))*1.4))
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
    
    if Snake.position.y>4100{
        changeSkyGround()
    }
    
    if Snake.position.y>10060{
        changeSpaceGround()
    }
    
    
    if Snake.position.y<14000{
        gameOver=false
      
    }
   
    if Snake.position.y>15920{
        gameOver=true
        
    }
    if gameOver == true{
        let trans = SKTransition.reveal(with: .down, duration: 1.0)

        let nextScene = endScene(fileNamed: "endScene")
        nextScene!.scaleMode = .aspectFill

        scene?.view?.presentScene(nextScene!, transition: trans)
    }
    
    
    cam.position.y = Snake.position.y
    cam.position.x=CGFloat(-2028.34)
    blastOff.position.y=Snake.position.y-400
    butt.position.y = Snake.position.y - 400
    butt2.position.y = Snake.position.y - 400
    arr.position = Snake.position
    
    if ((Snake.physicsBody?.velocity.dy)! >= 0.5)||((Snake.physicsBody?.velocity.dy)! <= -0.5){
        blastOff.position.y=Snake.position.y-3145643264
    }
  }
}
