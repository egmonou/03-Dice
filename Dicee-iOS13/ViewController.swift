//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var diceImageView01: UIImageView!
    @IBOutlet weak var diceImageView02: UIImageView!
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // #imageLiteral(resourceName: "DiceOne")
        let diceArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
        // Randomize from 0 To 5
        diceImageView01.image =  diceArray[Int.random(in: 0...5)]
        // Randomize array elements
        diceImageView02.image = diceArray.randomElement()
        sender.alpha = 0.5
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            sender.alpha = 1
        }
                
    }
    
}

