//
//  AgreementTableViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 8/10/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

struct Payment {
    var date: Date!
    var amount: Double!
    var stage: String!
}

class AgreementTableViewController: UITableViewController {

    
    var payments = [Payment]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Договор и оплата"
        
        tableView.tableHeaderView = UIView.instanceFromNib("AgreementHeaderView",frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 200), owner: self)

        tableView.estimatedRowHeight = 120
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 7//payments.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "agreementCell", for: indexPath) as! AgreementTableViewCell
        
        return cell
    }
    
}
