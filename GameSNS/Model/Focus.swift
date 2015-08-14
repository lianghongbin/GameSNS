//
//  Focus.swift
//  GameSNS
//
//  Created by lianghongbin on 15/8/14.
//  Copyright (c) 2015年 lianghongbin. All rights reserved.
//

import ObjectMapper

class Focus : Mappable {
    
    var id:Int?
    var photo:String?
    var itemId:Int?
    var type:String?
    var url:String?
    var sort:Int?
    
    class func newInstance() -> Mappable {
        return Gift()
    }
    
    // Mappable
    func mapping(map: Map) {
        id          <- map["id"]
        photo       <- map["photo"]
        itemId      <- map["itemId"]
        type        <- map["type"]
        url         <- map["url"]
        sort        <- map["sort"]
    }
}