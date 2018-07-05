//
//  QANavVC.swift
//  Q&A
//
//  Created by 小雨科技 on 2018/6/13.
//  Copyright © 2018 jiajianhao. All rights reserved.
//

import UIKit

class QABaseNavVC: UINavigationController ,UIGestureRecognizerDelegate,UINavigationControllerDelegate {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.interactivePopGestureRecognizer?.delegate = self
    }
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        super.pushViewController(viewController, animated: animated)
        self.interactivePopGestureRecognizer?.isEnabled = true
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
