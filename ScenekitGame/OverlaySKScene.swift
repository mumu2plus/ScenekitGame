//
//  OverlaySKScene.swift
//  ScenekitGame
//
//  Created by 加加林 on 2019/1/1.
//  Copyright © 2019 MuMu Games. All rights reserved.
//

import SpriteKit

class OverlaySKScene: SKScene {
    
    var _gameScene: GameSCNScene!
    var myLabel: SKLabelNode!
    var gameOverLabel: SKLabelNode!
    var jumpBtn: SKSpriteNode!
    var playBtn: SKSpriteNode!
    
    init(size: CGSize, gameScene: GameSCNScene) {
        super.init(size: size)
        
        _gameScene = gameScene
        
        myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel.text = "Score: 0";
        myLabel.fontColor = UIColor.white
        myLabel.fontSize = 65;
        myLabel.setScale(0.75)
        myLabel.position = CGPoint(x: size.width * 0.5, y: size.height * 0.8)
        self.addChild(myLabel)
        
        playBtn = SKSpriteNode(imageNamed: "playBtn")
        playBtn.position = CGPoint(x: size.width * 0.15, y: size.height * 0.2)
        playBtn.setScale(0.5)
        self.addChild(playBtn)
        playBtn.name = "playBtn"
        
        jumpBtn = SKSpriteNode(imageNamed: "jumpBtn")
        jumpBtn.position = CGPoint(x: size.width * 0.9, y: size.height * 0.15)
        jumpBtn.setScale(0.75)
        self.addChild(jumpBtn)
        jumpBtn.name = "jumpBtn"
        jumpBtn.isHidden = true
        
        gameOverLabel = SKLabelNode(fontNamed:"Chalkduster")
        gameOverLabel.text = "GAMEOVER";
        gameOverLabel.fontSize = 100;
        gameOverLabel.setScale(0.75)
        gameOverLabel.position = CGPoint(x: size.width * 0.5, y: size.height * 0.5)
        gameOverLabel.fontColor = UIColor.white
        self.addChild(gameOverLabel)
        gameOverLabel.isHidden = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.location(in: self)
            
            let _node:SKNode = self.atPoint(location);
            
            if(_gameScene.gameOver == false){
                if(_node.name == "jumpBtn"){
                    
                    _gameScene.heroJump()
                }
            }else{
                if(_node.name == "playBtn"){
                    
                    _gameScene.startGame()
                }
            }
        }
    }
    
    
}
