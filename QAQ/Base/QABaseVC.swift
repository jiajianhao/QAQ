//
//  QABaseVC.swift
//  QAQ
//
//  Created by 小雨科技 on 2018/6/13.
//  Copyright © 2018 jiajianhao. All rights reserved.
//

import UIKit
//import SVProgressHUD
//import SDWebImage

class QABaseVC: UIViewController {
    let shadowHeight : Int = 13
    
    var hasClickBackBtn : Bool = false
    var titleLbl : UILabel?
    var barView : UIView?
    var myRightBtn : UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = kWhiteBGColor;
        self.navigationController?.setNavigationBarHidden(true, animated: false)
        self.hideTabbar(isHidden: true)
//        SVProgressHUD.setMinimumDismissTimeInterval(1.5)
//        SVProgressHUD.setDefaultStyle(SVProgressHUDStyle.dark)
//        SVProgressHUD.setInfoImage(UIImage(named: "error")!)
//        SVProgressHUD.setSuccessImage(UIImage(named: "success")!)
//        SVProgressHUD.setBackgroundColor(UIColor.init(white: 0, alpha: 0.8))
//        SVProgressHUD.setForegroundColor(UIColor.init(fromHexCode: "#CCCCCC"))
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
     }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
     }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.hasClickBackBtn = false
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
     }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return UIStatusBarStyle.default
    }
    
    //MARK: 是否支持自动转屏
    override var shouldAutorotate: Bool{
        return false
    }
    
    //MARK: 支持哪些屏幕方向
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return UIInterfaceOrientationMask.portrait
    }
    
    //MARK: 默认的屏幕方向
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation{
        return UIInterfaceOrientation.portrait
    }
    
    //MARK:  Wether or not should hide Tabbar at bottom
    func hideTabbar(isHidden : Bool) {
//        (UIApplication.shared.delegate as! AppDelegate).hideTabbar(isHidden)
    }
    
    //MARK: Setup Custome NaviBar
    func customNaviItemWith(barColor : UIColor , title : String , useDefault : Bool ,useLeftBtn : Bool, leftBtn : UIButton , useRightBtn : Bool, rightBtn : UIButton , hasLine : Bool) {
        
        self.barView = UIView.init(frame: CGRect(x: 0, y: 0, width: kWidth, height: kNavBarHeightWithStatusBar + CGFloat((hasLine ? shadowHeight : 0))))
        self.barView?.backgroundColor = UIColor.clear
        self.view.addSubview(self.barView!)
        
        let bgView : UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: kWidth, height: kNavBarHeightWithStatusBar))
        bgView.backgroundColor = barColor
        self.barView?.addSubview(bgView)
        
        if useDefault {
            let defaultLeftBtn : UIButton = UIButton.init(type: UIButtonType.custom)
            defaultLeftBtn.frame = CGRect(x: 10, y: kStatusBarHeight, width: 40, height: 40)
            if barColor == UIColor.white || barColor == UIColor.clear {
                defaultLeftBtn.setImage(kBackBtnBlackImage, for: UIControlState.normal)
            }
            else{
                defaultLeftBtn.setImage(kBackBtnWhiteImage, for: UIControlState.normal)
            }
            defaultLeftBtn.addTarget(self, action: #selector(backBtnOnClick), for: UIControlEvents.touchUpInside)
            self.barView?.addSubview(defaultLeftBtn)
        }
        else{
            if  useLeftBtn {
                leftBtn.addTarget(self, action: #selector(backBtnOnClick), for: UIControlEvents.touchUpInside)
                self.barView?.addSubview(leftBtn)
            }
            
        }
        
        if title.count > 0 {
            self.titleLbl =  UILabel.init(frame: CGRect(x: (kWidth - 200) / 2, y: kStatusBarHeight, width: 200, height: 44))
            if barColor == UIColor.white {
                self.titleLbl?.textColor = k333GrayColor
            }
            else{
                self.titleLbl?.textColor = UIColor.white
            }
            self.titleLbl?.textAlignment = NSTextAlignment.center
            self.titleLbl?.font = UIFont.systemFont(ofSize: 18)
            self.titleLbl?.text = title
            self.barView?.addSubview(self.titleLbl!)
        }
        
        if  useRightBtn {
            self.myRightBtn = rightBtn
            self.myRightBtn?.addTarget(self, action: #selector(rightBtnOnClick), for: UIControlEvents.touchUpInside)
            self.barView?.addSubview(self.myRightBtn!)
        }
        
        if hasLine {
            let lineView = UIView.init(frame: CGRect(x: 0, y: kNavBarHeightWithStatusBar-0.5, width: kWidth, height: 0.5))
            lineView.backgroundColor = kdddGrayColor
            self.barView?.addSubview(lineView)
            
            let shadowImg : UIImageView = UIImageView.init(image: UIImage(named: "shadow")?.stretchableImage(withLeftCapWidth: 10, topCapHeight: 0))
            
            shadowImg.frame = CGRect(x: 0, y: kNavBarHeightWithStatusBar, width: kWidth, height: 13)
            self.barView?.addSubview(shadowImg)
            
        }
        
    }
    //MARK:  NaviBar Button Event
    @objc func backBtnOnClick() {
        self.navigationController?.popViewController(animated: true)
    }
    @objc func rightBtnOnClick()  {
        
    }
    
    
}
