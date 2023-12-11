//
//  ViewController.swift
//  HelloWorld
//
//  Created by Güray Gül on 11.12.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showMessage(sender: UIButton) {
        
        let animalEmojis: [String: String] = ["🐶": "Dog",
                                              "🐴": "Horse",
                                              "🐝": "Bee",
                                              "🐼": "Panda"]
        

        var meaning = animalEmojis[""]
        
        let selectedButton = sender
        
        if let wordToLookUp = selectedButton.titleLabel?.text {
            meaning = animalEmojis[wordToLookUp]
        }
        
        let alertController = UIAlertController(title: "Meaning",
                                                message: meaning,
                                                preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK",
                                                style: UIAlertAction.Style.default,
                                                handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
    
}

