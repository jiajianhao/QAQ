//
//  QATabbarVC.swift
//  Q&A
//
//  Created by 小雨科技 on 2018/6/13.
//  Copyright © 2018 jiajianhao. All rights reserved.
//

import UIKit

class QATabbarVC: UITabBarController {
//    class func shared()->(UITabBarController){
//
//        return taBarVC;
//
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = OCVC()
        let brand_VC = SwiftVC()
        
        let homeNvc:UINavigationController = QABaseNavVC(rootViewController: homeVC)
        let brandNvc:UINavigationController = QABaseNavVC(rootViewController: brand_VC)
        
        let homeTabbarItem = UITabBarItem(title: "首页", image:nil , selectedImage:nil)
        let brandTabbarItem = UITabBarItem(title: "品牌团", image: nil, selectedImage: nil)
        
        homeNvc.tabBarItem = homeTabbarItem;
        brandNvc.tabBarItem = brandTabbarItem;
 
        self.tabBar.tintColor = UIColor.red
        //        tc.tabBar.backgroundImage = Public.getImgView("3.png")
        self.viewControllers = [homeNvc,brandNvc ];
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
