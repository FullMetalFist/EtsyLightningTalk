//
//  ViewController01.swift
//  NewCode
//
//  Created by Michael Vilabrera on 12/15/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

import UIKit

class ViewController01: UIViewController, UITableViewDataSource {
    
    var tableView: UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var frame1 = UIScreen.mainScreen().bounds
        var frame2 = CGRectMake(10, 20, 200, 400)
        tableView = UITableView(frame:frame2, style: .Plain)
        if let newTable = tableView {
            newTable.registerClass(UITableViewCell.classForCoder(), forCellReuseIdentifier: "ident")
            newTable.dataSource = self
            newTable.autoresizingMask = .FlexibleWidth | .FlexibleHeight
            view.addSubview(newTable)
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 3
        case 1:
            return 5
        case 2:
            return 8
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("ident", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel?.text = "Section \(indexPath.section) Cell \(indexPath.row)"
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
