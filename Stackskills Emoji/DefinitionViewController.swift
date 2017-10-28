//
//  DefinitionViewController.swift
//  Stackskills Emoji
//
//  Created by Wyz on 24/10/17.
//  Copyright © 2017 Wyz. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "NO EMOJI"
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiPic: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("hey the new viewcontroller works")
        emojiPic.text = emoji
        
        if emoji == "😀" {
            definitionLabel.text = "standard smiley face"
            categoryLabel.text = "Category: Smiley"
            birthLabel.text = "Birth Year: 2011"
        }
        if emoji == "😎" {
            definitionLabel.text = "slim shady"
            categoryLabel.text = "Category: Smiley"
            birthLabel.text = "Birth Year: 2009"
        }
        if emoji == "🤡" {
            definitionLabel.text = "quit clowning around"
        }
        if emoji == "👿" {
            definitionLabel.text = "daemon"
        }
        if emoji == "😡" {
            definitionLabel.text = "angery reacts only"
        }
        if emoji == "😪" {
            definitionLabel.text = "zzz"
        }
        if emoji == "😭" {
            definitionLabel.text = "I'm cryin"
        }
        if emoji == "😻" {
            definitionLabel.text = "love cat"
        }
        if emoji == "☠️" {
            definitionLabel.text = "luffy"
        }
        if emoji == "HI" {
            definitionLabel.text = ""
        }
        if emoji == "I'M" {
            definitionLabel.text = ""
        }
        if emoji == "A" {
            definitionLabel.text = ""
        }
        if emoji == "BOY" {
            definitionLabel.text = "(u dumb)"
        }
        if emoji == "😴" {
            definitionLabel.text = "zzzz"
        }
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
