//
//  OCVC.swift
//  QAQ
//
//  Created by 小雨科技 on 2018/6/13.
//  Copyright © 2018 jiajianhao. All rights reserved.
//

import UIKit

class OCVC: QABaseVC {
    lazy var dataArray: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "OC"
        // Do any additional setup after loading the view.
        self.view.addSubview(mTableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK:
    lazy var mTableView: UITableView = {
        let table : UITableView = UITableView(frame:CGRect(origin: CGPoint(x: 0, y: kNavBarHeightWithStatusBar), size: CGSize(width: kWidth, height: kHeight-kNavBarHeightWithStatusBar)), style:UITableViewStyle.plain)
        table.dataSource = self
        table.delegate = self
        table.separatorStyle = UITableViewCellSeparatorStyle.none;
        table.sectionHeaderHeight = 0
        table.sectionFooterHeight = 0
        table.estimatedRowHeight = 0
        table.estimatedSectionHeaderHeight = 0
        table.estimatedSectionFooterHeight = 0
        table.register(UITableViewCell.self, forCellReuseIdentifier: "OcVcCellID")
 
        return table
    }()
}
extension OCVC {
    func initData()  {
        self.dataArray.append("pattern")
        self.dataArray.append("architecture")
        self.dataArray.append("Encyption")

    }
}

extension OCVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
            return 80
     }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
            
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "OcVcCellID")!
            
             cell.selectionStyle = UITableViewCellSelectionStyle.none;
        
            
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
 
        
    }
    
}
