//
//  ViewController.swift
//  Stackskills Emoji
//
//  Created by Wyz on 23/10/17.
//  Copyright © 2017 Wyz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var daCoolTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        daCoolTableView.dataSource = self
        daCoolTableView.delegate = self
        emojis = makeEmojiArray() //makes this the emoji array before
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defViewController = segue.destination as! DefinitionViewController
        defViewController.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func makeEmojiArray() -> [Emoji]{//return an array of Emoji oblects (Emoji is made in Emoji.swift
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.birthYear = 2010
        emoji1.definition = "Standard Smiley"
        emoji1.category = "Smiley"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😎"
        emoji2.birthYear = 2011
        emoji2.definition = "Sunglasses dude"
        emoji2.category = "Smiley"

        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤡"
        emoji3.birthYear = 2014
        emoji3.definition = "Clown Man"
        emoji3.category = "Ugly"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "👿"
        emoji4.birthYear = 666
        emoji4.definition = "Demonboy"
        emoji4.category = "Angry Smiley"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😡"
        emoji5.birthYear = 2016
        emoji5.definition = "Angry dude"
        emoji5.category = "Angry Smiley"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😪"
        emoji6.birthYear = 1999
        emoji6.definition = "zzzz"
        emoji6.category = "Sleepy Smiley"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "😭"
        emoji7.birthYear = 2011
        emoji7.definition = "Crying Boy"
        emoji7.category = "Sad Smiley"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "😻"
        emoji8.birthYear = 2000
        emoji8.definition = "Cat in Love"
        emoji8.category = "Cat Smiley"
      
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8]
    }
    
}

