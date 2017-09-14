//
//  MyAparTableViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 8/9/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit
import KYDrawerController

struct MyApar {
    var adress = ""
    var developer = ""
    var aparNumber = ""
    var contractDate = ""
    var contractNumber = ""
    var contractSum = 0
    var contractType = 0
    var id = ""
    var realProperty = ""
    var realPropertyId = ""
    var roomArea = 0.0
    var roomNumber = 0
    var roomTerraceArea = 0.0
}

protocol MyAparCellDelegate {
    func segue(_ id: String)

}

class MyAparTableViewController: UITableViewController {
    
    
    var apars = [MyApar]()
    var selectedApar: MyApar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        Model.get(.myApars, ["ui":"4589911"]) {result in
            
            if let json = result as? [String: Any], let arr = json["property"] as? [[String: Any]]{
                
                var apars = [MyApar]()
                
                arr.forEach { el in
                    
                    print(el)
                    
                    var apar = MyApar()
                    apar.adress = el["apartment_address"] as! String
                    apar.developer = el["apartment_developer"] as! String
                    apar.aparNumber = el["apartment_number"] as! String
                    apar.contractDate = el["contract_date"] as! String
                    apar.contractNumber = el["contract_number"] as! String
                    apar.contractType = el["contract_type"] as! Int
                    apar.contractSum = el["contract_sum"] as! Int
                    apar.id = el["property_id"] as! String
                    apar.realProperty = el["real_property"] as! String
                    apar.realPropertyId = el["real_property_id"] as! String
                    apar.roomArea = el["room_inner_area"] as! Double
                    apar.roomNumber = el["room_quantity"] as! Int
                    apar.roomTerraceArea = el["room_terrace_area"] as! Double
                    
                    apars.append(apar)
                }
                
                self.apars = apars
                
                DispatchQueue.main.async {
                    
                    self.tableView.reloadData()
                }
                
            } else {
                print("bad in MyApar")
            }
            
        }
      
        tableView.register(MyAparTableViewCell.self, forCellReuseIdentifier: "mine")
        tableView.register(UINib(nibName: "MyAparTableViewCell", bundle: nil), forCellReuseIdentifier: "mine")
        tableView.register(MyAparProcessTableViewCell.self, forCellReuseIdentifier: "process")
        tableView.register(UINib(nibName: "MyAparProcessTableViewCell", bundle: nil), forCellReuseIdentifier: "process")
        tableView.register(MyAparSellTableViewCell.self, forCellReuseIdentifier: "sell")
        tableView.register(UINib(nibName: "MyAparSellTableViewCell", bundle: nil), forCellReuseIdentifier: "sell")
        
        tableView.estimatedRowHeight = 216
        tableView.rowHeight = UITableViewAutomaticDimension
    }

    @IBAction func menuButtonTapped(_ sender: Any) {
        if let drawerController = navigationController?.parent as? KYDrawerController {
            drawerController.setDrawerState(.opened, animated: true)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
         self.title = " "
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = "Мои квартиры"
    }
    
//    func segue(_ id: String) {
//        performSegue(withIdentifier: id, sender: self)
//    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return apars.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let apar = apars[indexPath.row]
        
        switch apar.contractType {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "mine", for: indexPath) as! MyAparTableViewCell
            cell.titleLabel.text = apar.realProperty
            cell.contractLabel.text = "Договор \(apar.contractNumber)"
            
            return cell
        case 1:
            print(apar)
            let cell = tableView.dequeueReusableCell(withIdentifier: "process", for: indexPath) as! MyAparProcessTableViewCell
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "sell", for: indexPath) as! MyAparSellTableViewCell
            return cell
        default:
            break
        }
    
        
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedApar = apars[indexPath.row]
        performSegue(withIdentifier: "myAparFull", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "myAparFull" {
            
            let des = segue.destination as! MyAparFullViewController
            des.apar = selectedApar
            
        }
        
    }
    
}
