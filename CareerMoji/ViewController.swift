//
//  ViewController.swift
//  CareerMoji
//
//  Created by Apple on 7/25/19.
//  Copyright © 2019 Leora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    let emojis = ["🏃‍♀️": "runner","🌳": "tree", "🗣": "speak","🌊": "wave","🌝": "sun", "🏔": "mountain"  ]
    let emojiDictionary = ["runner": ["Persistent!", "Ethical!","Ambitious!"],
                           "tree": ["Prudent!", "Sincere!", "Kind!"],
                           "speak": ["Respectful!", "Loyal!", "Confident!"],
                           "wave": ["Resilient!", "Acceptance!", "Empathy!"],
                           "sun": ["Determined!","Brave!","Creative!"],
                           "mountain": ["Passionate!","Adaptable!","Strong!"] ]
    
     @IBAction func showMessage(sender: UIButton) {
       let number = Int.random(in: 0 ... 2)
        let selectedEmoji = sender.titleLabel?.text
        
        let emojiMessage = emojiDictionary[emojis[selectedEmoji!]!]?[number]
        
        let alertController = UIAlertController(title: "You got...", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "Sweet!", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
        
    }

}

