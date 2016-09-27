//
//  TableViewController.swift
//  Autolayout
//
//  Created by Supakit Thanadittagorn on 9/26/2559 BE.
//  Copyright © 2559 Supakit Thanadittagorn. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    let data = [CellData(isShowBoxView: true),
                CellData(),
                CellData()]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellId", for: indexPath) as! TableViewCell
        let cellData = data[indexPath.row]

        if cellData.isShowBoxView {
            cell.bubbleLabel.text = "Test for very long text than simple label"
        } else {
            cell.bubbleLabel.text = "Short"
            let button = UIButton(type: .custom)
            button.addTarget(self, action: #selector(click), for: .touchUpInside)
//            button.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            button.setTitle("Button", for: .normal)
            button.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
            button.translatesAutoresizingMaskIntoConstraints = false;
            cell.bubbleButtonView.constraints.first?.constant = 30;
            cell.bubbleButtonView.addSubview(button)
            cell.bubbleButtonView.addConstraints([
                NSLayoutConstraint(item: button, attribute: .leading, relatedBy: .equal, toItem: cell.bubbleButtonView, attribute: .leading, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: cell.bubbleButtonView, attribute: .trailing, relatedBy: .equal, toItem: button, attribute: .trailing, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: button, attribute: .top, relatedBy: .equal, toItem: cell.bubbleButtonView, attribute: .top, multiplier: 1, constant: 0),
                NSLayoutConstraint(item: cell.bubbleButtonView, attribute: .bottom, relatedBy: .equal, toItem: button, attribute: .bottom, multiplier: 1, constant: 0)
                ])
            cell.bubbleButtonView.layoutIfNeeded()
            cell.bubbleButtonView.setNeedsLayout()
        }

        return cell
    }

    func click(){
        print("Click")
    }
}



class CellData {
    var isShowBoxView: Bool

    init(isShowBoxView: Bool = false){
        self.isShowBoxView = isShowBoxView
    }
}
