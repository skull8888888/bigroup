//
//  ObjectView.swift
//  BIGroup
//
//  Created by Robert Kim on 7/4/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit
import MapKit

struct Block {

}


class ObjectView: UIView, UITableViewDataSource {

    @IBOutlet weak var mainImage: UIImageView!
    
    var view: UIView!
    
    
    @IBOutlet weak var planButton: UIButton!
    @IBOutlet weak var condButton: UIButton!
    @IBOutlet weak var siteButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var longDesLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var aparNumLabel: UILabel!
    
    @IBOutlet weak var comNumLabel: UILabel!
    
    init(frame: CGRect, blocks: [Block]) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    func addSeparator(y: CGFloat){
        let layer = CAShapeLayer()
        let path = UIBezierPath(rect: CGRect(x: 0, y: y, width: self.frame.width, height: 1))
        layer.path = path.cgPath
        layer.fillColor = UIColor.bgaPaleGreyTwo.cgColor
        layer.lineWidth = 1
        
        self.view.layer.addSublayer(layer)
    }
    
    func xibSetup() {
        
        
        view = loadViewFromNib()
        
        // use bounds not frame or it'll be offset
        view.frame = bounds
        
        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        
        siteButton.layer.borderWidth = 2
        siteButton.layer.borderColor = UIColor.bgaDarkishBlue.cgColor
        
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "blockCell")
        
        addSubview(view)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "blockCell", for: indexPath)
        cell.textLabel?.text = "ok"
        return cell
    }
    
    func loadViewFromNib() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "ObjectView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        return view
    }
    
}
