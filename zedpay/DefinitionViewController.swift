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
    @IBOutlet weak var lblcategorie: UILabel!
    @IBOutlet weak var lblYear: UILabel!
    var emoji = EmojiClass()
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLbl.text = emoji.stringEmoji
        definitionLbl.text = emoji.definition
        lblcategorie.text = emoji.categorie
        
//        if emoji=="🙇🏾‍♂️" {
//            definitionLbl.text = "Sad baby"
//            lblcategorie.text = "Child"
//            lblYear.text = " 2009"
//        }

        // Do any additional setup after loading the view.
    }
    


}
