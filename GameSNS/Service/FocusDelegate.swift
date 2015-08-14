//
//  FocusDelegate.swift
//  GameSNS
//
//  Created by lianghongbin on 15/8/14.
//  Copyright (c) 2015年 lianghongbin. All rights reserved.
//

import UIKit
import ObjectMapper

class FocusDelegate : DataDelegate {
    
    var circleView:CircleView?
    
    func process(data: Mappable) {
        
        if let jsonArrayWrapper = data as? JsonArrayWrapper<Focus> {
            var focuses = jsonArrayWrapper.data!
            var images:Array<UIImage> = []
            for focus in focuses {
                images.append(UIImage(named: focus.photo!)!)
            }
            
            dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), { () -> Void in
                dispatch_async(dispatch_get_main_queue(), { [unowned self] in
                    
                    self.circleView!.imageArray = images
                    })
            })
            
        }
    }
}
