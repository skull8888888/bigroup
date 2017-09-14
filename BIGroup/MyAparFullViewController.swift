//
//  MyAparFullViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 8/9/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class MyAparFullViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var contractLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var developerLabel: UILabel!
    @IBOutlet weak var aparNumberLabel: UILabel!
    @IBOutlet weak var roomNumberLabel: UILabel!
    @IBOutlet weak var roomAreaLabel: UILabel!
    @IBOutlet weak var terraceAreaLabel: UILabel!
    
    
    @IBOutlet weak var agreementButton: NotifButtonView!
    @IBOutlet weak var extraAgreementButton: NotifButtonView!
    @IBOutlet weak var paymentButton: NotifButtonView!
    @IBOutlet weak var keysButton: NotifButtonView!
    @IBOutlet weak var propertyButton: NotifButtonView!
    @IBOutlet weak var sellButton: NotifButtonView!
    
    var apar: MyApar!
        
    override func viewDidLoad() {
        super.viewDidLoad()
            
        let contentView = UIView.instanceFromNib("MyAparFullView",frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 1500), owner: self)
        
        let scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.size.height - 64))
        scrollView.addSubview(contentView)
        scrollView.contentSize = contentView.frame.size
        
        agreementButton.tapped = {
            self.performSegue(withIdentifier: "agreement", sender: self)
        }
        agreementButton.titleLabel.text = "Договор и оплата"
        
        extraAgreementButton.tapped = {
            self.performSegue(withIdentifier: "extraAgreement", sender: self)
        }
        extraAgreementButton.titleLabel.text = "Дополнительные соглашения"
        
        paymentButton.tapped = {
            self.performSegue(withIdentifier: "payment", sender: self)
        }
        paymentButton.titleLabel.text = "Коммунальные услуги"
        
        keysButton.tapped = {
            self.performSegue(withIdentifier: "keys", sender: self)
        }
        keysButton.titleLabel.text = "Получение ключей"
        
        propertyButton.tapped = {
            self.performSegue(withIdentifier: "property", sender: self)
        }
        propertyButton.titleLabel.text = "Оформление в собственность"
        
        sellButton.tapped = {
            self.performSegue(withIdentifier: "sell", sender: self)
        }
        sellButton.titleLabel.text = "Выставить на продажу"

        
        nameLabel.text = apar.realProperty
        addressLabel.text = apar.adress
        developerLabel.text = apar.developer
        aparNumberLabel.text = apar.aparNumber
        roomNumberLabel.text = "\(apar.roomNumber)"
        roomAreaLabel.text = "\(apar.roomArea)"
        terraceAreaLabel.text = "\(apar.roomTerraceArea)"
        titleLabel.text = apar.realProperty
        contractLabel.text = "Договор: \(apar.contractNumber)"
        
        self.view.insertSeparatorAt(y: sellButton.frame.maxY + 16)
        
        self.view.addSubview(scrollView)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.title = " "
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.title = apar.realProperty
    }
      
}
