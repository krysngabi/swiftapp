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
    var emojis = ["🐥","🙇🏾‍♂️","🤮","💪🏾","🧓🏻"]
    
    @IBAction func btnValider(_ sender: Any) {
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
        lbl1.text="Ambra Jordan est Magnifique❣️"
        tbview.dataSource=self
        tbview.delegate=self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return emojis.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell()
        cell.textLabel?.text=emojis[indexPath.row]
    
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let emoji=emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! String
        
    }
    
    
}

