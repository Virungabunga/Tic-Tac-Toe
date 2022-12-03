//
//  Model.swift
//  TicTacToe
//
//  Created by Oscar Sparrman on 2022-11-29.
//

import Foundation




class Player {
   
   var players = [Player]()
    
    var wins : Int
    var losess : Int
    var name : String
    var turn : Bool
    
    init(name: String) {
        self.name = name
        self.wins = 0
        self.losess = 0
        self.turn = false
        players.append(Player(name: name))
    }
    
//    func handlePlayerOne () -> Player{ }
      

    
}




 
class Square {
    var markedByplayer : String
    
    init() {
        self.markedByplayer = ""
        
    }
    
}

    
class Grid {
var squareMatrix: [[Square]] = []

init(row: Int, column: Int) {
    for _ in 1...row {
        var innerArray: [Square] = []
        for _ in 1...column {
            innerArray.append(Square())
        }
        squareMatrix.append(innerArray)
    }
  }
}

    



  
    
  
        
     
      
    




    
