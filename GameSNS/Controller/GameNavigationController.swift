//
//  GameNagivationController.swift
//  GameSNS
//
//  Created by lianghongbin on 15/8/12.
//  Copyright (c) 2015年 lianghongbin. All rights reserved.
//

import UIKit

class GameNavigationController : UINavigationController {
    
    override func viewDidLoad() {
 
        self.tabBarItem.title = nil
        self.tabBarItem.image = UIImage(named: "game")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        self.tabBarItem.selectedImage = UIImage(named: "game_select")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        self.tabBarItem.imageInsets = insets
        self.navigationBar.barTintColor = viewBackgroundColor
        self.navigationBar.titleTextAttributes = titleDict as [NSObject : AnyObject]
        
        var lineView = UIView(frame: CGRect(x: 0, y: self.navigationBar.frame.maxY, width: self.view.frame.size.width, height: 2))
        lineView.backgroundColor = lineBgColor
        
        var gameView = GameViewController()
        gameView.view.addSubview(lineView)
        
        self.viewControllers = [gameView]
    }
}
