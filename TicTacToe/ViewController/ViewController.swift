//
//  ViewController.swift
//  TicTacToe
//
//  Created by Oscar Sparrman on 2022-12-01.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var oneOneIV: UIImageView!
    
    @IBOutlet weak var oneTwoIV: UIImageView!
    
    @IBOutlet weak var oneThreeIV: UIImageView!
    
    @IBOutlet weak var twoOneIV: UIImageView!
    
    @IBOutlet weak var twoTwoIV: UIImageView!
    
    @IBOutlet weak var twoThreeIV: UIImageView!
    
    @IBOutlet weak var threeOneIV: UIImageView!
    
    @IBOutlet weak var threeTwoIV: UIImageView!
    
    @IBOutlet weak var threeThreeIV: UIImageView!
    
    @IBOutlet weak var PlayerOneNameView: UITextField!
    
    @IBOutlet weak var PlayerTwoNameView: UITextField!
    
    @IBOutlet weak var player1WinlLabel: UILabel!
    
    @IBOutlet weak var player2WinLabel: UILabel!
    
    var imageViewMatrix : [[UIImageView]] = [[]]
    
    var gridplayer: Player!
    let grid = Grid(row: 3, column: 3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        grid.player1 = Player(name: "deafultname", mark: "x.png")
        grid.player2 = Player(name: "deafultname2", mark: "o.png")
        
        grid.currentPlayer = grid.player1
        
        imageViewMatrix = [[oneOneIV,twoOneIV, threeOneIV],
                           [oneTwoIV,twoTwoIV,threeTwoIV],
                            [oneThreeIV,twoThreeIV,threeThreeIV]]
        
        
        for uIImageViewRow in imageViewMatrix {
            for imageView in uIImageViewRow {
                
                let gestureRecognizerOneOne = UITapGestureRecognizer(target:     self, action: #selector(gesturefired(_:)))
                gestureRecognizerOneOne.numberOfTapsRequired = 1
                gestureRecognizerOneOne.numberOfTouchesRequired = 1
                imageView.addGestureRecognizer(gestureRecognizerOneOne)
                gestureRecognizerOneOne.view?.isUserInteractionEnabled = true
                
            }
        }
        
        
        
        
    }
    
    @IBAction func resetButton(_ sender: Any) {
        resetGame()
    }
    
    func resetGame()  {
        
        for uIImageViewRow in imageViewMatrix {
            for imageView in uIImageViewRow {imageView.image=nil}}
        
        
                
        grid.player1 = Player(name: "deafultname", mark: "x.png")
        grid.player2 = Player(name: "deafultname2", mark: "o.png")
        
        grid.currentPlayer = grid.player1
    
    }
    
    @IBAction func button(_ sender: Any) {
        if let playerName1 = PlayerOneNameView.text {
            grid.player1?.name = playerName1
            if let playerName2 = PlayerTwoNameView.text {
                grid.player2?.name = playerName2
               
            }
        }
        
        
        
    }
    
    @objc func gesturefired(_ gesture:UITapGestureRecognizer){
        
        
        
        print("fire: \(gesture.view?.tag)")
        
        if let gridplayer = grid.currentPlayer{
            
            switch gesture.view?.tag{
                
            case 1:
                
                grid.placeMark(colum:1,row: 1,player: gridplayer)
                oneOneIV.image = UIImage(named: gridplayer.mark)
            case 2:
                
                grid.placeMark(colum:1,row: 2,player: gridplayer)
                oneTwoIV.image = UIImage(named: gridplayer.mark)
            case 3:
                
                grid.placeMark(colum:1,row: 3,player: gridplayer)
                oneThreeIV.image = UIImage(named: gridplayer.mark)
            case 4:
                
                grid.placeMark(colum:2,row: 1,player: gridplayer)
                twoOneIV.image = UIImage(named: gridplayer.mark)
            case 5 :
                
                grid.placeMark(colum:2,row: 2,player: gridplayer)
                twoTwoIV.image = UIImage(named: gridplayer.mark)
            case 6:
                
                grid.placeMark(colum:2,row: 3,player: gridplayer)
                twoThreeIV.image = UIImage(named: gridplayer.mark)
            case 7:
                
                grid.placeMark(colum:3,row: 1,player: gridplayer)
                threeOneIV.image = UIImage(named: gridplayer.mark)
            case 8:
                
                grid.placeMark(colum:3,row: 2,player: gridplayer)
                threeTwoIV.image = UIImage(named: gridplayer.mark)
            case 9:
                
                grid.placeMark(colum:3,row: 3,player: gridplayer)
                threeThreeIV.image = UIImage(named: gridplayer.mark)
                
            default : print("somethingwrong")
                
                
            }
            gesture.view?.isUserInteractionEnabled = false
            
            if( grid.checkWin(player: gridplayer) == gridplayer.mark){
                grid.sccore()
                if let gridPlayer1 = grid.player1{
                    if let gridPlayer2 = grid.player2{
                        
                        player2WinLabel.text = String(gridPlayer2.wins)
                    }
                    
                    player1WinlLabel.text = String(gridPlayer1.wins)
                }
                
                
            }
        }
    }
    
}

