//
//  GamePlay.swift
//  Rock-Paper-Scissors
//
//  Created by Mark Thorn on 8/10/16.
//  Copyright © 2016 Mark Thorn. All rights reserved.
//

import Foundation

//Struct to hold final result
struct ResultOfPlayStruct{
    var ResultMessage: String
    var ResultImageURL: String
}

//Possible hand signs
enum hand: String {
    case Rock = "Rock"
    case Paper = "Paper"
    case Scissors = "Scissors"
}

class GamePlay{
    
    static func Play(incomingButtonTitle: String)-> ResultOfPlayStruct
    {
        let myHand = TranslateHand(incomingButtonTitle)
        let oppHand = GetRandomDraw()
        let final = CompareHands(myHand,opponetHand: oppHand)
        return final
    }
    
    static func GetRandomDraw() -> hand{
        let randomInt = Int(arc4random_uniform(3))
        let randomHand = TranslateHand(randomInt)
        return randomHand
    }
    
    static func TranslateHand(inInt: Int)-> hand{
        var randomHand: hand
        switch inInt {
        case 0:
            randomHand = hand.Rock
        case 1:
            randomHand = hand.Paper
        default:
            randomHand = hand.Scissors
            //default:
            //    randomHand = hand.Error
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
        default:
            randomHand = hand.Scissors
            //default:
            //    randomHand = hand.Error
        }
        return randomHand
    }

    static func CompareHands(myHand: hand, opponetHand: hand) -> ResultOfPlayStruct
    {
        var mesg: String
        var img: String
        
        switch (myHand, opponetHand){
        case let (mine, opp) where mine == opp:
            mesg = "Ahh, bummer... You Tied"
            img = determineGraphic(myHand, losingHand: opponetHand)
        case (.Rock, .Scissors), (.Paper, .Rock), (.Scissors, .Paper):
            mesg = "Winner Winner Chicken Dinner " + returnHandsRawValues(myHand, oppHand: opponetHand)
            img = determineGraphic(myHand, losingHand: opponetHand)
        default:
            mesg = "So sorry.. " + returnHandsRawValues(myHand, oppHand: opponetHand)
            img = determineGraphic(opponetHand, losingHand: myHand)
        }
        
        let resultsOfPlay = ResultOfPlayStruct(ResultMessage: mesg, ResultImageURL: img)
        
        return resultsOfPlay
    }
    
    static func returnResults(Res: ResultOfPlayStruct) -> String{
        return Res.ResultMessage
    }
    
    static func returnHandsRawValues(myHand: hand, oppHand: hand) -> String
    {
        return "your \(myHand.rawValue) vs \(oppHand.rawValue)"
    }
    
    static func determineGraphic(winningHand: hand, losingHand: hand) -> String
    {
        var retVal: String
        if winningHand == losingHand {
            retVal = "itsATie"
        } else {
            retVal = "\(winningHand.rawValue)" + "-" + "\(losingHand)"
        }
        return retVal
    }
}
