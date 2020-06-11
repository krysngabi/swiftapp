//
//  DefinitionViewController.swift
//  zedpay
//
//  Created by Krys Ngabi on 6/10/20.
//  Copyright © 2020 Krys Ngabi. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var emojiLbl: UILabel!
    @IBOutlet weak var definitionLbl: UILabel!
    var emoji = "NO EMOJI"
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLbl.text = emoji
        
        if emoji=="🙇🏾‍♂️" {
            definitionLbl.text = "Sad baby"
        }

        // Do any additional setup after loading the view.
    }
    


}
