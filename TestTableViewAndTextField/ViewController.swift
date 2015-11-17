//
//  ViewController.swift
//  TestTableViewAndTextField
//
//  Created by Andy Obusek on 11/17/15.
//  Copyright © 2015 Obuseme. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pauseTapped(sender: AnyObject) {
        let cell = tableView(tableView, cellForRowAtIndexPath: NSIndexPath(forRow: 0, inSection: 0)) as! TextFieldTableViewCell
        print("cell text->\(cell.textField.text)")
        print("pause")
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 300
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if (indexPath.row == 0) {
            let cell = tableView.dequeueReusableCellWithIdentifier("TextFieldCell")
            return cell!
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("LabelCell")
            return cell!
        }
    }

}