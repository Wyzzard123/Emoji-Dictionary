//
//  DefinitionViewController.swift
//  Stackskills Emoji
//
//  Created by Wyz on 24/10/17.
//  Copyright © 2017 Wyz. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = Emoji()
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiPic: UILabel!
    
    @IBOutlet weak var categoryLabel: UILabel!
    
    @IBOutlet weak var birthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiPic.text = emoji.stringEmoji
        definitionLabel.text = "Definition: \(emoji.definition)"
        categoryLabel.text = "Category: \(emoji.category)"
        birthLabel.text = "Origination Date: \(emoji.birthYear)"
        
       
        }
        
        // Do any additional setup after loading the view.
    
    
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
