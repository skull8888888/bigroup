//
//  EventTableViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 8/11/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit
import KYDrawerController

class ReferenceTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 76))
        let addButtonView = AddButtonView(frame: CGRect(x: 16, y: 16, width: view.frame.width - 32, height: 44))
        
        addButtonView.tapped = {
            self.performSegue(withIdentifier: "referenceAddRequest", sender: self)
        }
        
        header.addSubview(addButtonView)
        
        tableView.tableHeaderView = header
        
        tableView.estimatedRowHeight = 64
        tableView.rowHeight = UITableViewAutomaticDimension
        
    }
    
    @IBAction func menuButtonTapped(_ sender: Any) {
        if let drawerController = navigationController?.parent as? KYDrawerController {
            drawerController.setDrawerState(.opened, animated: true)
        }
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Мои справки"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ReferenceTableViewCell
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toCell", sender: self)
    }


}
