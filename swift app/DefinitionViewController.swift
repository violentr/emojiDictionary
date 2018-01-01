//
//  DefinitionViewController.swift
//  swift app
//
//  Created by den on 30/12/2017.
//  Copyright © 2017 den. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
  
  
  @IBOutlet weak var definitionLabel: UILabel!
  var emoji = Emoji()
  @IBOutlet weak var emojiLabel: UILabel!
  

    override func viewDidLoad() {
           super.viewDidLoad()
        emojiLabel.text? = emoji.string
        definitionLabel.text? = emoji.description
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
