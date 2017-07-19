//
//  MortgageViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 7/11/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit
import KYDrawerController

class MortgageViewController: UIViewController {

    
    @IBOutlet weak var testView: UIView!
    var scrollView: UIScrollView!
    
    var screen = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contentView = UIView.instanceFromNib("MortgageView", frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 720), owner: self)
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: screen.width, height: view.frame.size.height))
        scrollView.addSubview(contentView)
        scrollView.contentSize = CGSize(width: screen.width, height: 720)
        
        self.view.addSubview(scrollView)
    }

    @IBAction func toCallback(_ sender: Any) {
        
        let callbackVC = storyboard?.instantiateViewController(withIdentifier: "callbackVC") as! CallbackViewController
        
        self.navigationController?.pushViewController(callbackVC, animated: true)
        
    }
    
    
    @IBAction func menuButtonTapped(_ sender: Any) {
        if let drawerController = navigationController?.parent as? KYDrawerController {
            drawerController.setDrawerState(.opened, animated: true)
        }
    }
}
