//
//  Model.swift
//  TicTacToe
//
//  Created by Oscar Sparrman on 2022-11-29.
//

import Foundation

class Play  {
    
    var grid1 = Grid(colum: 3, row: 3).grid
    var gridAsList : Square
    init(){
        
        var win :Bool = false
      
        }
        
        
    }
    
    


class player {
    var wins : Int
    var losess: Int
    var name : String
    init(wins: Int, losess: Int, name: String) {
        self.wins = wins
        self.losess = losess
        self.name = name
    }
    
}


class Square {

    var marked : Bool
    init(marked: Bool ) {
        self.marked = marked
    
    }
}

class Grid  {
    
    let colum : Int
    let row : Int
    var gridList  : [Square] = []
    
    
    
    init(colum : Int, row : Int) {
        self.colum = colum
        self.row = row
        
        
        for index in 1...colum {
            for index in 1...row{ Square(marked: false)
                
            }
                            
            
        }
        
        
        
        
    }
    
}
    






    
