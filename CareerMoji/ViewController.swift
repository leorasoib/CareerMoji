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
    let number = Int.random(in: 0 ... 4)
    let emojis = ["🥭": "mango","🥶": "freezing face", "🦉": "owl","🧝‍♂️": "fantasy guy","🌝": "sun", "🧞‍♀️": "mermaid"  ]
    let emojiDictionary = ["mango": ["Congrats you will be an architect!!", "Dreams don't work unless you do!", "Girlfriend, if he don't appreciate fruit puns...You need to let that mango.","I don't know, the mango goes where the mangoes"],
                           "freezing face": ["Congrats you will be a software analyst!", "Death is more universal than life; everyone dies but not everyone lives.", "The principles of logic do not apply to food", "Oh my god I love my pumpkin"],
                           "owl": ["Congrats you're going to be a marine biologist!", "Estoy talking!", "You have won a free ticket to the KIA summer sales event", "What does an owl with attitude have? A scowl!"],
                           "fantasy guy": ["LEGOLAS??!", "congrats you will be a journalist!", "So I was there, driving in my thruck with a stoven full of sprankles", "Never trust men with beards"],
                           "sun": ["Congratulations you are going to be the owner of a world famous ice cream shop!","LIMITS ONLY EXIST IN THE MIND","You are my sunshine, my only sunshine...", "Four score and seven years ago our fathers brought forth on this continent, a new nation, conceived in Liberty, and dedicated to the proposition that all men are created equal. Now we are engaged in a great civil war, testing whether that nation, or any nation so conceived and so dedicated, can long endure. We are met on a great battle-field of that war. We have come to dedicate a portion of that field, as a final resting place for those who here gave their lives that that nation might live. It is altogether fitting and proper that we should do this.But, in a larger sense, we can not dedicate -- we can not consecrate -- we can not hallow -- this ground. The brave men, living and dead, who struggled here, have consecrated it, far above our poor power to add or detract. The world will little note, nor long remember what we say here, but it can never forget what they did here. It is for us the living, rather, to be dedicated here to the unfinished work which they who fought here have thus far so nobly advanced. It is rather for us to be here dedicated to the great task remaining before us -- that from these honored dead we take increased devotion to that cause for which they gave the last full measure of devotion -- that we here highly resolve that these dead shall not have died in vain -- that this nation, under God, shall have a new birth of freedom -- and that government of the people, by the people, for the people, shall not perish from the earth."],
                           "mermaid": ["Congratulations you will be an astronaut!","cool stuff bro","git. off. my. porch.", "People can't use you if you're useless"] ]
    
     @IBAction func showMessage(sender: UIButton) {
       let number = Int.random(in: 0 ... 4)
        let selectedEmoji = sender.titleLabel?.text
        
        let emojiMessage = emojiDictionary[emojis[selectedEmoji!]!]?[number]
        
        let alertController = UIAlertController(title: "Hello there!", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
        
        
    }

}

