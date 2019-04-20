//
//  ViewController.swift
//  DiceESP
//
//  Created by Jim on 4/4/19.
//  Copyright © 2019 JimDiaz. All rights reserved.
//

import UIKit

var diceIndex1:[String] = ["dice1","dice2", "dice3", "dice4", "dice5", "dice6"]

var diceIndex2:[String] = ["dice1","dice2", "dice3", "dice4", "dice5", "dice6"]


   // define a random integer variable
var randomInteger1:Int = 0
var randomInteger2:Int = 0

class ViewController: UIViewController {
    
    @IBOutlet weak var diceLeft: UIImageView!
    @IBOutlet weak var diceRight: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        updateDice()
        
    }


   
    //
 
    @IBAction func rollButton(_ sender: UIButton) {
        
        updateDice()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }
    
    func updateDice(){
        
        randomInteger1 = Int.random(in: 0...5)
        randomInteger2 = Int.random(in: 0...5)
        print(randomInteger1)
        print(randomInteger2)
        
        diceLeft.image = UIImage(named: diceIndex1[randomInteger1])
        diceRight.image = UIImage(named:diceIndex2[randomInteger2])
    }
    
    
}

