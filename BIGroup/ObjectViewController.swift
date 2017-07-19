//
//  ObjectViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 7/4/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit

struct Object {
    
}

class ObjectViewController: UIViewController {
    
    
    var scrollView: UIScrollView!
    var objectView: ObjectView!
    
    var screen = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: screen.width, height: screen.height - 64))
        
        objectView = ObjectView(frame: CGRect(x: 0, y: 0, width: screen.width, height: 1500), blocks: [Block()])
        
        
        for v in objectView.view.subviews {
            print(v.classForCoder,v.frame.height)
        }
        
        scrollView.contentSize = objectView.frame.size
        scrollView.addSubview(objectView)
        
        view.addSubview(scrollView)
        
    }
    
    
    
}
