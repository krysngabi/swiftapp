//
//  ViewController.swift
//  zedpay👽//
//  Created by Krys Ngabi on 6/9/20.
//  Copyright © 2020 Krys Ngabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var txt2: UITextField!
    @IBOutlet weak var tbview: UITableView!
    var compteur=0
    var age : Int = 27
    var sunny : Bool = true
    var emojis : [EmojiClass] = []
    @IBAction func btnValider(_ sender: Any) {
        
        
         performSegue(withIdentifier: "moveSegue", sender: "⛱")
        
       
        //adding console output
        
        //        print("Button clicked...eloko")
        //        compteur+=1
        //        if(compteur==5){
        //             lbl1.text="Button tap 5 times"
        //        }else{
        //        lbl1.text=String(compteur)
        //        }
        print(txt1.text!)
        print(txt2.text!)
        
        let sum="\(Double(txt1.text!)!+Double(txt2.text!)!)";
        
        lbl1.text=String(sum)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after  loading the view.
        emojis = makeEmojiArray()
        
        lbl1.text="Ambra Jordan est Magnifique❣️"
        tbview.dataSource=self
        tbview.delegate=self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return emojis.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        //cell.textLabel?.text=emojis[indexPath.row]
        cell.textLabel?.text=emojis[indexPath.row].stringEmoji
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let emoji=emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! EmojiClass
        
    }
    func makeEmojiArray ()-> [EmojiClass]{
        
        
        let  emoji1 = EmojiClass()
        
        emoji1.stringEmoji = "🐥"
        emoji1.categorie = "Bird"
        emoji1.definition = "A smiling Bird"
        
        let  emoji2 = EmojiClass()
               
       emoji2.stringEmoji = "🙇🏾‍♂️"
       emoji2.categorie = "Boy"
       emoji2.definition = "A sad baby"
        
        let  emoji3 = EmojiClass()
                
        emoji3.stringEmoji = "🤮"
        emoji3.categorie = "Grrr"
        emoji3.definition = "Throwing out"
        
        return [emoji1,emoji2,emoji3]
         
    }
    
    
}

