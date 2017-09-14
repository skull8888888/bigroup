//
//  UserView.swift
//  BIGroup
//
//  Created by Robert Kim on 8/7/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

class UserView: UIView {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var tapped: (()->())!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        
        self.addGestureRecognizer(gesture)
        
        let contentView = UIView.instanceFromNib("UserView",frame: frame, owner: self)
        contentView.backgroundColor = UIColor.bgaDarkishBlue
        self.addSubview(contentView)
        
    }
    
    func handleTap(){
        tapped()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
