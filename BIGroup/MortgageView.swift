//
//  MortgageView.swift
//  BIGroup
//
//  Created by Robert Kim on 7/11/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class MortgageView: UIView {
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup(name: "MortgageView")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup(name: "MortgageView")
    }

}
