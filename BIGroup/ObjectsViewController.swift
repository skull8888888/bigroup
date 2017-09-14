
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
import SwiftyJSON
import Kingfisher
import Alamofire

class ObjectsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate{
    
    var collectionView: UICollectionView!
    var screen = UIScreen.main.bounds
    
    
    var objects = [JSON]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Model.get(.objects) { data in
            
            if let arr = JSON(data).array {
             
                self.objects = arr
                
                DispatchQueue.main.async {
                    self.collectionView.reloadData()
                }
            }
        }
        
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
        return objects.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "objectCollectionCell", for: indexPath) as! ObjectCollectionViewCell
        
        let object = objects[indexPath.row]
        print(object)
        
        cell.nameLabel.text = object["name"].string
        
        print(object)
        
        if let urlString = object["logo_web"].string {
        
            var u = urlString.replacingOccurrences(of: "\\\\192.168.46.6\\отдел продаж\\Основные фото ЖК", with: "amg.bi-group.org:8081")
            
            let headers: HTTPHeaders = [
                "": ""
            ]
            
            Alamofire.request(u, method: .get, headers: headers).responseImage { response in
                
                
                if let json = response.result.value {
                    completion(json)
                } else {
                    print("bad json", response.result)
                }
                
            }

            
            
            if let url = URL(string: u) {
                
                print(url)
            } else {
                print("no url")
            }
        }
        
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

