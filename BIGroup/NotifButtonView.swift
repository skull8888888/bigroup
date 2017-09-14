//
//  NotifButtonView.swift
//  BIGroup
//
//  Created by Robert Kim on 8/9/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class NotifButtonView: UIView {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var notifLabel: UILabel!
    
    
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
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        
        self.addGestureRecognizer(gesture)
        
        let contentView = UIView.instanceFromNib("NotifButtonView",frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height), owner: self)
        self.addSubview(contentView)
    }
    
    func handleTap(){
        tapped()
    }
    
}
