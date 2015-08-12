//
//  GiftInfoController.swift
//  KK
//
//  Created by lianghongbin on 15/8/4.
//  Copyright (c) 2015年 lianghongbin. All rights reserved.
//

import UIKit

class GiftInfoController : UIViewController {
    
    var gift:Gift?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.whiteColor()
        
        var desc = UILabel(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 300))
        desc.text = gift?.description
        
        self.view.addSubview(desc)
    }
}
