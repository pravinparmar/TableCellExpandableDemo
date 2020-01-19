//
//  HeaderCell.swift
//  TableCellExpandable
//
//  Created by Megha on 17/06/19.
//  Copyright © 2019 Megha. All rights reserved.
//

import UIKit

class HeaderCell: UITableViewCell,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tbl2: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CCell") as! CCell
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return  UITableView.automaticDimension
    }

    @IBOutlet weak var containerVC: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        tbl2.estimatedRowHeight = 50
        tbl2.rowHeight = UITableView.automaticDimension
        containerVC.layer.cornerRadius = 10
        containerVC.clipsToBounds = true
        containerVC.layer.borderWidth = 2
        containerVC.layer.borderColor = UIColor.orange.cgColor
        // Initialization code
    }
    func tblheight() ->CGFloat {
        return tbl2.contentSize.height+80

    }
    func getTableViewHeight()->CGFloat{
        
        tbl2.reloadData()
        tbl2.layoutIfNeeded()
        return tbl2.contentSize.height + tbl2.contentInset.bottom + tbl2.contentInset.top
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
