//
//  DrawerViewController.swift
//  BIGroup
//
//  Created by Robert Kim on 7/3/17.
//  Copyright © 2017 Octopus. All rights reserved.
//

import UIKit
import KYDrawerController

struct DrawerItem {
    var imageName: String!
    var title: String!
    var segue: String!
}

class DrawerTableViewController: UITableViewController {
    
    lazy var userView: UserView = {
        let uv = UserView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 48))
        
        return uv
    }()
    
    var items = [
        [
            DrawerItem(imageName: "apartments.png", title: "Мои квартиры", segue:"myApar"),
            DrawerItem(imageName: "iabout.png", title: "BI Service", segue:"biservice"),
            DrawerItem(imageName: "spravki.png", title: "Справки", segue:"reference"),
            DrawerItem(imageName: "reports.png", title: "Отчеты", segue:"callback"),
            DrawerItem(imageName: "notif.png", title: "Оповещения", segue: "notifs")
        ],
        [
            DrawerItem(imageName: "objects.png", title: "Объекты", segue:"objects"),
            DrawerItem(imageName: "apartments.png", title: "Подбор квартир", segue:"apars"),
            DrawerItem(imageName: "sales-pressed-white.png", title: "Акции", segue:"sales"),
            DrawerItem(imageName: "call.png", title: "Подать заявку", segue:"callback"),
            DrawerItem(imageName: "favorite.png", title: "Избранное", segue: "favorite")
        ],
        [
            DrawerItem(imageName: "mortgage.png", title: "Ипотека", segue:"mortgage"),
            DrawerItem(imageName: "part payment.png", title: "Рассрочка", segue:"part"),
            DrawerItem(imageName: "instant payment.png", title: "Стандартные условия", segue:"standart"),
        ],
        [
            DrawerItem(imageName: "iabout.png", title: "О компании", segue:"about"),
            DrawerItem(imageName: "news.png", title: "Новости", segue:"news"),
            DrawerItem(imageName: "contacts.png", title: "Контакты", segue:"contacts"),
        ],
        [
            DrawerItem(imageName: "iabout.png", title: "Информация", segue:"info"),
            DrawerItem(imageName: "folder.png", title: "Отправить заявку в BI Service", segue:"issue"),
        ],
        [
            DrawerItem(imageName: "object-conv.png", title: "Посещение объекта", segue:"visit"),
            DrawerItem(imageName: "opened doors.png", title: "День открытых дверей", segue:"doors"),
            DrawerItem(imageName: "key.png", title: "Получение ключей", segue:"keys"),
            DrawerItem(imageName: "folder-user.png", title: "Оформление в собственность", segue:"docs"),
            DrawerItem(imageName: "sale.png", title: "Перепродажа", segue: "resale"),
            DrawerItem(imageName: "iabout.png", title: "Другая информация", segue: "extra")
        ],
        
    ]
    
    var sectionsArr = [
        "Мое меню",
        "Основные",
        "Условия покупки",
        "О компании",
        "BI service",
        "Владельцам"
    ]
    
    var screen = UIScreen.main.bounds
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userView.tapped = {
            if let parent = self.parent as? KYDrawerController {
                
                DispatchQueue.main.async {
                    
                    parent.performSegue(withIdentifier: "myProfile", sender: self)
                    parent.setDrawerState(.closed, animated: true)
                    
                }
                
            }
        }
        
        tableView.tableHeaderView = userView
        
        tableView.backgroundColor = UIColor.bgaDarkishBlue
        tableView.contentInset = UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -20)
        tableView.estimatedRowHeight = 36
        print("ok")
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return sectionsArr.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items[section].count
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        
        
        let view = UILabel(frame: CGRect(x: 0, y: 0, width: screen.width, height: 30))
        
//        view.backgroundColor = UIColor.bgaDarkishBlue
        let topBorderLayer = CAShapeLayer()
        topBorderLayer.path = UIBezierPath(rect: CGRect(x: 0, y: 0, width: screen.width, height: 1)).cgPath
        topBorderLayer.fillColor = UIColor.white.cgColor
        topBorderLayer.opacity = 0.16
        
        view.layer.addSublayer(topBorderLayer)
        
        let label = UILabel(frame: CGRect(x: 16, y: 1, width: screen.width - 16, height: 29))
        label.textColor = UIColor(red: 255/255.0, green: 255/255.0, blue: 255/255.0, alpha: 0.5)
        label.backgroundColor = UIColor.bgaDarkishBlue
        label.text = sectionsArr[section]
        label.font = UIFont.systemFont(ofSize: 13)
        
        view.addSubview(label)
        
        return view
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let parent = self.parent as? KYDrawerController {
            
            DispatchQueue.main.async {
                
                parent.performSegue(withIdentifier: "\(self.items[indexPath.section][indexPath.row].segue!)", sender: self)
                parent.setDrawerState(.closed, animated: true)

            }
            
        }
    
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 36
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "drawerCell", for: indexPath) as! DrawerTableViewCell
        let item = items[indexPath.section][indexPath.row]
        
        cell.iconView.image = UIImage(named: item.imageName)
        cell.label.text = item.title
        
        return cell
    }
    
}


