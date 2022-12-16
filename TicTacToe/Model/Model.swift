//
//  Model.swift
//  TicTacToe
//
//  Created by Oscar Sparrman on 2022-11-29.
//

import Foundation




class Player : Equatable {
    
    
    var wins : Int
    var losess : Int
    var name : String
    var mark : String
    
    
    init(name: String, mark: String) {
        self.name = name
        self.wins = 0
        self.losess = 0
        self.mark = mark
        
        
    }
    static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.name == rhs.name
        
    }
    
    
    
}





class Square : Equatable {
    
    var mark :String
    
    
    init(mark: String) {
        self.mark = mark
    }
    
    static func == (lhs: Square, rhs: Square) -> Bool {
        return lhs.mark == rhs.mark
    }
    
    
}

class Grid {
    
    private var squareMatrix: [[Square]] = []
    var player1: Player?
    var player2: Player?
    var currentPlayer : Player?
    
    init(row: Int, column: Int) {
        
        for _ in 1...row {
            var innerArray: [Square] = []
            for _ in 1...column {
                innerArray.append(Square(mark: ""))
            }
            squareMatrix.append(innerArray)
        }
    }
    
    
    func placeMark(colum : Int, row : Int, player: Player ){
        
        currentPlayer = player
        
        if(currentPlayer==player1){
            
            squareMatrix[colum-1][row-1].mark = player.mark
            currentPlayer = player2
        } else if (currentPlayer == player2){
            
            squareMatrix[colum-1][row-1].mark = player2!.mark
            currentPlayer = player1
            
        }
    }
    
    
    
    
    func checkWin (player:Player) -> String {
        
        
        
        for i in 0..<squareMatrix.count{
            let row = squareMatrix[i]
            if( row.allSatisfy ({ $0.mark == "x.png" })){
                return "x.png"
                
            }
            if( row.allSatisfy ({ $0.mark == "o.png" })){
                
                return "o.png"
            }
        }
        
        for i in 0..<squareMatrix.count {
            let column = squareMatrix.map { $0[i] }
            if column.allSatisfy({ $0.mark == "x.png" }) {
                return "x.png"
                
            }
            if column.allSatisfy({ $0.mark == "o.png" }) {
                return "o.png"
            }
        }
        
        let diagonal1 = (0..<squareMatrix.count).map { squareMatrix[$0][$0] }
        
        if diagonal1.allSatisfy({ $0.mark == "x.png" }) {
            return "x.png"
        }
        if diagonal1.allSatisfy({ $0.mark == "o.png" }) {
            return "o.png"
        }
        
        let diagonal2 = (0..<squareMatrix.count).map { squareMatrix[$0][squareMatrix.count - $0 - 1] }
        
        if diagonal2.allSatisfy({ $0.mark == "x.png" }) {
            return "x.png"
            
        }
        if diagonal2.allSatisfy({ $0.mark == "o.png" }) {
            return "o.png"
        }
        
        
        
        return "No chicken dinner for you!"
        
        
        
    }
    
    
    func sccore () {
        if let gridplayer = currentPlayer {
            
            gridplayer.wins = gridplayer.wins + 1
            
          
    
            
        }
    }
}




















