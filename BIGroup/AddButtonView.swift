//
//  AddButton.swift
//  BIGroup
//
//  Created by Robert Kim on 8/11/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class AddButtonView: UIView {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBInspectable var title: String! {
        didSet {
            titleLabel.text = title!
        }
    }
    
    var tapped: (()->())!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        load()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        load()
    }
    
    
    func load(){
        
        let contentView = UIView.instanceFromNib("AddButtonView",frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height), owner: self)
        self.addSubview(contentView)

        let gesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        self.addGestureRecognizer(gesture)
    }
    
    func handleTap(){
        tapped()
    }
    
    
}
