//
//  GamePlay.swift
//  Rock-Paper-Scissors
//
//  Created by Mark Thorn on 8/10/16.
//  Copyright © 2016 Mark Thorn. All rights reserved.
//

import Foundation




struct ResultOfPlayStruct{
    
    var ResultMessage: String
    var ResultImageURL: String
}

enum hand {
    case Error, Rock, Paper, Scissors
}


class GamePlay{
    
    static func returnText() -> String{
        return "yadayada"
    }
    
    static func TranslateHand(inEnum: Int)-> hand{
        var randomHand: hand
        
        switch inEnum {
        case 0:
            randomHand = hand.Rock
        case 1:
            randomHand = hand.Paper
        case 2:
            randomHand = hand.Scissors
        default:
            randomHand = hand.Error
        }
        return randomHand
    }
    
    static func TranslateHand(inString: String)-> hand{
        let randomHand: hand
        
        switch inString {
        case "Rock":
            randomHand = hand.Rock
        case "Paper":
            randomHand = hand.Paper
        case "Scissors":
            randomHand = hand.Scissors
        default:
            randomHand = hand.Error
        }
        return randomHand
    }
    
    
    
    
    
    static func GetRandomDraw() -> hand{
        let randomInt = Int(arc4random_uniform(3))
        let randomHand = TranslateHand(randomInt)
        return randomHand
    }
    
    
    static func CompareHands(myHand: hand, opponetHand: hand)
    {
        
        
        
        
    }
    
    static func Play(incomingButtonTitle: String)
    {
        let oppHand = GetRandomDraw()
        let myHand = TranslateHand(incomingButtonTitle)
        CompareHands(myHand,opponetHand: oppHand)
        
        
        returnText()
        
        
        
        
        //ResultOfPlay.init(ResultMessage: String, ResultImageURL: <#T##String#>)
        
        
    }
    
}
