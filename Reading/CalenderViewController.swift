//
//  CalenderViewController.swift
//  Reading
//
//  Created by 魏辉 on 16/3/29.
//  Copyright © 2016年 魏辉. All rights reserved.
//

import UIKit

class CalenderViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func crossButton(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    var listenArray = ["张小龙：怎样做一个好产品", "是什么催生了资本主义？记账", "如何用游戏的方式管理公司", "是什么催生了资本主义？记账", "如何用游戏的方式管理公司", "是什么催生了资本主义？记账", "如何用游戏的方式管理公司"]
    var bookArray = ["《杀戮与文化》解读版","未来的人类是一对数据"]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}


private typealias TableViewDelegate = CalenderViewController
extension TableViewDelegate: UITableViewDelegate {
    
}

private typealias TableViewDateSource = CalenderViewController

extension TableViewDateSource: UITableViewDataSource {
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return listenArray.count
        case 1:
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
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCellWithIdentifier("TitleCell") as! BookTitleTableViewCell
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
            if indexPath.row == 0 {
                return 44
            } else {
                return 120
            }
        default:
            return 0
        }
    }
    
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        if section == 1 {
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
