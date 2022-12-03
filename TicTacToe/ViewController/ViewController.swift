//
//  ViewController.swift
//  TicTacToe
//
//  Created by Oscar Sparrman on 2022-12-01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var oneOne: UITextField!
    @IBOutlet weak var oneTwo: UITextField!
    @IBOutlet weak var oneThree: UITextField!
    
    @IBOutlet weak var twoOne: UITextField!
    
    @IBOutlet weak var twoTwo: UITextField!
    
    @IBOutlet weak var twoThree: UITextField!
    
    @IBOutlet weak var threeOne: UITextField!
    
    @IBOutlet weak var threeTwo: UITextField!
    
    @IBOutlet weak var threeThree: UITextField!
    
    @IBOutlet weak var playerTexfield: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let grid = Grid(row: 3, column: 3)
        
        if let oneOneTextfield = oneOne.text{
            grid.squareMatrix[1][1].markedByplayer = oneOneTextfield
        }
        
        if let playerTextField = playerTexfield.text{
            let  playerOne = Player(name : playerTextField)
            
        }
        
        
        
    }
    
    
}
