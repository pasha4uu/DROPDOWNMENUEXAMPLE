//
//  ViewController.swift
//  DROPDOWNMENUEXAMPLE
//
//  Created by PASHA on 25/10/18.
//  Copyright © 2018 Pasha. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

  @IBOutlet weak var btnClick: UIButton!
  var arr = [Int]()
  @IBOutlet weak var myTB: UITableView!
  override func viewDidLoad() {
    super.viewDidLoad()
    arr = [1,2,3,4,5,6,7,8,9,0]
    
    self.myTB.isHidden = true
    // Do any additional setup after loading the view, typically from a nib.
  }
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arr.count
  }
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CELL")

      cell?.textLabel?.text = "\(arr[indexPath.row])"

    return cell!
  }
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    let cell = tableView.cellForRow(at: indexPath)
 self.btnClick.setTitle(cell?.textLabel?.text, for: .normal)
    self.myTB.isHidden = true
  }
  
  @IBAction func btnTap(_ sender: Any) {
    self.myTB.isHidden = !self.myTB.isHidden
  }
  
}

