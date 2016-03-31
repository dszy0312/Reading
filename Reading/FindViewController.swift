//
//  FindViewController.swift
//  Reading
//
//  Created by 魏辉 on 16/3/25.
//  Copyright © 2016年 魏辉. All rights reserved.
//

import UIKit

class FindViewController: UIViewController {

    @IBOutlet weak var imageList: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

        imageList.contentSize = CGSize(width: self.view.frame.size.width * 5, height: imageList.frame.size.height)
        for i in 1...5 {
            
            let newPageView = UIImageView(image: UIImage(named: "photo\(i)"))
            newPageView.contentMode = .ScaleToFill
            newPageView.frame = CGRect(x: self.view.frame.size.width * CGFloat(i - 1), y: 0, width: self.view.frame.size.width, height: imageList.frame.size.height)
            imageList.addSubview(newPageView)
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
