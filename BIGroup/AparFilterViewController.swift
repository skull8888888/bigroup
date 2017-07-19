//
//  FilterAparViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 7/13/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit
import M13Checkbox

class AparFilterViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet weak var cityDropInputView: DropInputView!
    @IBOutlet weak var roomsCollectionView: UICollectionView!
    @IBOutlet weak var quarterCollectionView: UICollectionView!
    
    var scrollView: UIScrollView!
    
    var screen = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contentView = UIView.instanceFromNib("AparFilterView", frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 1000), owner: self)

        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: screen.width, height: view.frame.size.height))
        scrollView.addSubview(contentView)
        scrollView.contentSize = contentView.frame.size
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        
        let width = (screen.width - 32) / 6
        
        layout.itemSize = CGSize(width: width, height: 40)
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        layout.minimumLineSpacing = 0.0
        layout.minimumInteritemSpacing = 0.0
        

        roomsCollectionView.dataSource = self
        roomsCollectionView.delegate = self
        roomsCollectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: "collectionCell")

        
        roomsCollectionView.collectionViewLayout = layout
        
        self.view.addSubview(scrollView)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == roomsCollectionView {
            return 6
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CollectionViewCell
        
        
        cell.titleLabel.text = "\(indexPath.row + 1)"
        
        cell.titleLabel.backgroundColor = .red
        
        print(cell)
        
        return cell
    }
    
    
}

class CollectionViewCell: UICollectionViewCell {
    
    var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        titleLabel = UILabel(frame: CGRect(x: (self.frame.size.width - 40) / 2, y: 0, width: 40, height: 40))
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 1
        self.addSubview(titleLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
