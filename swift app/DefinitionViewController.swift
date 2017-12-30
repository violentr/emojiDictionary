//
//  DefinitionViewController.swift
//  swift app
//
//  Created by den on 30/12/2017.
//  Copyright © 2017 den. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    var emoji = "NO EMOJI"
  @IBOutlet weak var emojiPicture: UILabel!
  

    override func viewDidLoad() {
           super.viewDidLoad()
        emojiPicture.text? = emoji
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
