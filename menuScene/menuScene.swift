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

        super.touchesBegan(touches, with: event)

        if let location = touches.first?.location(in: self) {
            let touchedNode = atPoint(location)

            if touchedNode.name == "startGameButton" {

                let transition = SKTransition.reveal(with: .down, duration: 1.0)

                let nextScene = GameScene(fileNamed: "GameScene")
                nextScene!.scaleMode = .aspectFill

                scene?.view?.presentScene(nextScene!, transition: transition)
            }
        }
    }
}
