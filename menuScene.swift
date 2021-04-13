//
//  menuScene.swift
//  SnakeGame
//
//  Created by 64003232 on 4/7/21.
//

import SpriteKit

class menuScene: SKScene {

    var startGameButton:SKSpriteNode!
    
    override func didMove(to view: SKView) {
            
        startGameButton = self.childNode(withName: "startGameButton") as? SKSpriteNode
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    
        let touch = touches.first
        
        if let location = touch?.location(in:self){
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "startGameButton"{
                let transition = SKTransition.flipHorizontal(withDuration: 5)
                let gameScene = GameScene(size: self.size)
                self.view?.presentScene(gameScene, transition: transition)
            }
        }
        
    }
    
}
