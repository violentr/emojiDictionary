//
//  ViewController.swift
//  swift app
//
//  Created by den on 30/12/2017.
//  Copyright © 2017 den. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

  @IBOutlet weak var mainscreenTableView: UITableView!

 var emojis = ["😀","😬","😂", "😃", "😄"]

  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
   mainscreenTableView.dataSource = self
   mainscreenTableView.delegate = self
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  return emojis.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
   
      cell.textLabel?.text = emojis[indexPath.row]
      return cell

  }
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
   performSegue(withIdentifier: "moveSegue", sender: "🤑")
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

