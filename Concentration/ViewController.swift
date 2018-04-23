//
//  ViewController.swift
//  Concentration
//
//  Created by Justin Lazarski on 4/22/18.
//  Copyright © 2018 Justin Lazarski. All rights reserved.
//
// Testing



import UIKit

class ViewController: UIViewController {

    var flipCount: Int = 0 {
        didSet {
            flipCountLabel.text = "Flips: \(flipCount)"

        }
    }
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet var cardButtons: [UIButton]!
    
    var emojiChoices = ["💀","😀","💀","😀"]
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            print("cardNumber = \(cardNumber)")
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
            
        } else {
            print("Chosen card was not in cardButtons")
        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        print("flipCard(withEmoji: \(emoji)")
        
        if button.currentTitle == emoji {
            button.setTitle("", for: UIControlState.normal)
            button.backgroundColor = #colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1)
        } else {
                button.setTitle(emoji, for: UIControlState.normal)
                button.backgroundColor = #colorLiteral(red: 0.9490196078, green: 0.9490196078, blue: 0.9490196078, alpha: 1)
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
