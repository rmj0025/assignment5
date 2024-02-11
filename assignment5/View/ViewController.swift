//
//  ViewController.swift
//  assignment5
//
//  Created by user247998 on 2/9/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var AdventureLabel: UILabel!
    
    @IBOutlet weak var OptionOneButton: UIButton!
    
    @IBOutlet weak var OptionTwoButton: UIButton!
    
    @IBOutlet weak var background: UIImageView!
    
    var adventureLogic = AdventureLogic()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @objc func updateUI() {
        AdventureLabel.text = adventureLogic.getNextAdventure()
        background.image = UIImage(named: String(adventureLogic.getImageName()))
        OptionOneButton.setTitle(adventureLogic.getOptionOne(), for: .normal)
        OptionTwoButton.setTitle(adventureLogic.getOptionTwo(), for: .normal)
            
        OptionOneButton.backgroundColor = UIColor.clear
        OptionTwoButton.backgroundColor = UIColor.clear
    }
    
    @IBAction func actionChosen(_ sender: UIButton) {
        // get user response
        let userAnswer = sender.titleLabel!.text!
        
        adventureLogic.increaseIndex(userAnswer)
        
        sender.backgroundColor = UIColor.white
        
        if adventureLogic.adventureIndex == 9 || adventureLogic.adventureIndex == 10 {
            OptionOneButton.isHidden = true
            OptionTwoButton.isHidden = true
        }
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(updateUI), userInfo: nil, repeats: false)
    }
}

