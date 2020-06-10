//
//  ViewController.swift
//  zedpay
//
//  Created by Krys Ngabi on 6/9/20.
//  Copyright © 2020 Krys Ngabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    var compteur=0
    @IBAction func btnValider(_ sender: Any) {
        //adding console output
        
        print("Button clicked...eloko")
        compteur+=1
        if(compteur==5){
             lbl1.text="Button tap 5 times"
        }else{
        lbl1.text=String(compteur)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        lbl1.text="Ambra Jordan est Magnifique❣️"
    }


}

