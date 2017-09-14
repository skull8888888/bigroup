//
//  ProcessView.swift
//  BIGroup
//
//  Created by Robert Kim on 8/9/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class ProcessView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let contentView = UIView.instanceFromNib("ProcessView",frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height), owner: self)
        self.addSubview(contentView)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let contentView = UIView.instanceFromNib("ProcessView",frame: CGRect(x: 0, y: 0, width: frame.width, height: frame.height), owner: self)
        self.addSubview(contentView)
    }


}
