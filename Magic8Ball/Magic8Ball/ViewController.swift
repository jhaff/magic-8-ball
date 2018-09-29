//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Jacob Haff on 8/27/18.
//  Copyright © 2018 Jacob Haff. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Properties
    
    let answers = ["Yes, definitely", "It is certain", "Without a doubt", "Yes", "Most likely", "Sure, why not?", "Same", "Tell me more", "Out to lunch", "Reply hazy, try again", "Ask again later", "The cake is a lie", "42", "TMI", "Very doubtful", "Don't count on it", "My reply is no", "Absolutely not"] //array to store answers spat out by 8 ball

    //link UI attributes
    @IBOutlet weak var shakeButton: UIButton!
    @IBOutlet weak var answerLabel: UILabel!
    
    //select a random answer from array and update the label
    func generateAnswer() {
        let maxIndex = UInt32(answers.count)
        let randomIndex = Int(arc4random_uniform(maxIndex))
        
        answerLabel.text = answers[randomIndex]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }
    
    //listen for taps on shakeButton, respond with answer
    @IBAction func shakeButtonTapped(_ sender: Any) {
        
        print("Shake it like a polaroid picture!")
        
        generateAnswer()
        
    }

    //listen for shakes, respond with answer
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        guard motion == .motionShake else { return }
        
        generateAnswer()
    }
    
}
