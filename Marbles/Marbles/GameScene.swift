//
//  GameScene.swift
//  Marbles
//
//  Created by PMStudent on 11/10/21.
//

import SpriteKit

class Marble: SKSpriteNode { }

class GameScene: SKScene {
    
    var marbles = ["marbleBlue", "marbleCyan", "marbleGreen", "marbleGrey", "marblePurple", "marbleRed", "marbleYellow" ]
    
    override func didMove(to view: SKView) {
        
        let marble = SKSpriteNode(imageNamed: "marbleRed")
        let marbleRadius = marble.frame.width / 2.0
        
        for i in stride(from: marbleRadius, to: view.bounds.width - marbleRadius, by: marble.frame.width) {
            for j in stride(from: 100, to: view.bounds.height - marbleRadius, by: marble.frame.height) {
                let marbleType = marbles.randomElement()!
                let marble = Marble(imageNamed: marbleType)
                marble.position = CGPoint(x: i, y: j)
                marble.name = marbleType
                addChild(marble)
                
                marble.physicsBody = SKPhysicsBody(circleOfRadius: marbleRadius)
                marble.physicsBody?.allowsRotation = false
                marble.physicsBody?.friction = 0
                marble.physicsBody?.restitution = 0
                
            }
        }
        
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame.inset(by: UIEdgeInsets(top: 100, left: 0, bottom: 0, right: 0)))
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
