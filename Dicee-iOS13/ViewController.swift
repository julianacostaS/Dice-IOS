//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //IBOutlet when we want to change something in the interface
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
  
    //Action to the button "Roll" When an intercation with the user interface leads to something int the code
    @IBAction func rollDice(_ sender: UIButton) {
        
        //All elements are displayed in the array
        let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        
        //Two different ways to randomise elements in an array
        diceImageView1.image = diceArray.randomElement() //Call random.Element() to randomise from all elemnts in the array or
        diceImageView2.image = diceArray[Int.random(in: 0...5)] //Specify the range of elements you want to randomise
       
    }
}

