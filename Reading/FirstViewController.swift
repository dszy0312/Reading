//
//  FirstViewController.swift
//  Reading
//
//  Created by 魏辉 on 16/3/23.
//  Copyright © 2016年 魏辉. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var listenArray = ["张小龙：怎样做一个好产品", "是什么催生了资本主义？记账", "如何用游戏的方式管理公司"]
    var bookArray = ["《杀戮与文化》解读版","说杂志：深入浅出，解密引力波"]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
//        self.tabBarController?.tabBar.backgroundImage = UIImage(named: "tabbarBG")
//        self.tabBarController?.tabBar.contentMode = .ScaleAspectFill
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

private typealias TableViewDelegate = FirstViewController
extension TableViewDelegate: UITableViewDelegate {
    
}

private typealias TableViewDateSource = FirstViewController

extension TableViewDateSource: UITableViewDataSource {
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return listenArray.count
        case 1:
            return 1
        case 2:
            return bookArray.count + 1
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("ListenCell") as! ListenTableViewCell
            cell.title.text = listenArray[indexPath.row]
            return cell
        } else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCellWithIdentifier("SeeCell") as! SeeTableViewCell
            cell.sontent.text = "Lorem ipsum dolor sit er elit lamet, consectetaur cillium adipisicing pecu, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Nam liber te conscient to factor tum poen legum odioque civiuda."
            return cell
        } else if indexPath.section == 2 {
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCellWithIdentifier("BookTittleCell") as! BookTitleTableViewCell
                return cell
            } else {
                let cell = tableView.dequeueReusableCellWithIdentifier("BookCell") as! BookTableViewCell
                cell.title.text = bookArray[indexPath.row - 1]
                return cell
            }
        } else {
            
            return UITableViewCell()
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return 50
        case 1:
            return 210
        case 2:
            if indexPath.row == 0 {
                return 50
            } else {
                return 120
            }
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 2 {
            return 0
        } else {
            
            return 10
        }
    }
    func tableView(tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = UIColor(red: 244.0/255.0, green:
            244.0/255.0, blue: 244.0/255.0, alpha: 1.0)
        return view
    }

    
}
