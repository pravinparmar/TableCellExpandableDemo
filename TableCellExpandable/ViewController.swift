//
//  ViewController.swift
//  TableCellExpandable
//
//  Created by Megha on 17/06/19.
//  Copyright © 2019 Megha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var tbl1: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
      UIPasteboard.general.string = "Test 12345"
        let content = UIPasteboard.general.string
        print(" Copy value =\(content)")
        
        self.tbl1.estimatedRowHeight = 160
        self.tbl1.rowHeight  = UITableView.automaticDimension
    }
}
extension ViewController:UITableViewDataSource,UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
         return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier:"HeaderCell") as! HeaderCell
        return cell
        
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cell = tableView.dequeueReusableCell(withIdentifier:"HeaderCell") as! HeaderCell
        return cell.getTableViewHeight()
        //return UITableView.automaticDimension
        ///
    }
}

