
//
//  ViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 7/3/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit
import UPCarouselFlowLayout
import KYDrawerController

class ObjectsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    var collectionView: UICollectionView!
    var screen = UIScreen.main.bounds
    
    
//    var objects = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UPCarouselFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: screen.width - 60, height: screen.height - 150)
        layout.sideItemScale = 0.8
        layout.spacingMode = .fixed(spacing: 16)
        
        
        collectionView = UICollectionView(frame: screen, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UINib(nibName:"ObjectCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "objectCollectionCell")
        view.addSubview(collectionView)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10//objects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "objectCollectionCell", for: indexPath)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "toObject", sender: self)
    }
    
    @IBAction func showDrawer(_ sender: Any) {
        if let drawerController = navigationController?.parent as? KYDrawerController {
            drawerController.setDrawerState(.opened, animated: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

