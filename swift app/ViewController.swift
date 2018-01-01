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

  var emojis: [Emoji] = []

  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
   mainscreenTableView.dataSource = self
   mainscreenTableView.delegate = self
   emojis = generateEmoji()
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
  return emojis.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell()
      let emoji = emojis[indexPath.row]
      cell.textLabel?.text = emoji.string
      return cell

  }
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
    
   let emoji = emojis[indexPath.row]
    performSegue(withIdentifier: "moveSegue", sender: emoji)
  }
  
  func generateEmoji() -> [Emoji] {
    let emoji1 = Emoji()
    let word = "face"
    
    emoji1.string = "😀"
    emoji1.description = "Smily \(word)"
    
    let emoji2 = Emoji()
    emoji2.string = "😬"
    emoji2.description = "Angry \(word)"
    
    let emoji3 = Emoji()
    emoji3.string = "😂"
    emoji3.description = "Lol \(word)"
    
    let emoji4 = Emoji()
    emoji4.string = "😃"
    emoji4.description = "Chearing \(word)"
    
    return [emoji1, emoji2, emoji3, emoji4]
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
  let defVC = segue.destination as! DefinitionViewController
    defVC.emoji = sender as! Emoji
    
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

