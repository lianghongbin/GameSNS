//
//  ViewController.swift
//  SwiftInAction-008-018
//
//  Created by zhihua on 14-7-7.
//  Copyright (c) 2014年 ucai. All rights reserved.
//
import UIKit

class RootViewController: UITabBarController {
    
    var giftNavigation:UINavigationController!
    var gameNavigation:UINavigationController!
    var rankNavigation:UINavigationController!
    var myNavigation:UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        initGameView()
        initGiftView()
        initRankView()
        initMyView()

        //self.tabBar.clipsToBounds = true
        self.viewControllers = [giftNavigation, rankNavigation, gameNavigation, myNavigation]
    }
    
    override func viewWillLayoutSubviews()
    {
        var tabFrame = self.tabBar.frame
        // - 40 is editable , I think the default value is around 50 px, below lowers the tabbar and above increases the tab bar size
        self.tabBar.barTintColor = barTintColor
        self.tabBar.translucent = false
    }
    
    func initGameView() {
        gameNavigation = UINavigationController()
        gameNavigation.tabBarItem.title = nil
        gameNavigation.tabBarItem.image = UIImage(named: "game")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        gameNavigation.tabBarItem.selectedImage = UIImage(named: "game_select")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        gameNavigation.tabBarItem.imageInsets = insets
        gameNavigation.navigationBar.barTintColor = barTintColor
        gameNavigation.navigationBar.titleTextAttributes = titleDict as [NSObject : AnyObject]
        
        //line view
        var lineView = UIView(frame: CGRect(x: 0, y: 64, width: self.view.frame.size.width, height: 2))
        lineView.backgroundColor = lineBgColor
        var gameView = GameViewController()
        gameView.view.addSubview(lineView)
        
        gameNavigation.viewControllers = [gameView]
    }
    
    func initGiftView() {
        giftNavigation = UINavigationController()
        giftNavigation.tabBarItem.title = nil
        giftNavigation.tabBarItem.image = UIImage(named: "gift")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        giftNavigation.tabBarItem.selectedImage = UIImage(named: "gift_select")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        giftNavigation.tabBarItem.imageInsets = insets
        giftNavigation.navigationBar.barTintColor = barTintColor
        giftNavigation.navigationBar.titleTextAttributes = titleDict as [NSObject : AnyObject]
        
        //line view
        var lineView = UIView(frame: CGRect(x: 0, y: 64, width: self.view.frame.size.width, height: 2))
        lineView.backgroundColor = lineBgColor
        var giftView = GiftViewController()
        giftView.view.addSubview(lineView)
        
        giftNavigation.viewControllers = [giftView]
    }
    
    func initRankView() {
        rankNavigation = UINavigationController()
        rankNavigation.tabBarItem.title = nil
        rankNavigation.tabBarItem.image = UIImage(named: "rank")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        rankNavigation.tabBarItem.selectedImage = UIImage(named: "rank_select")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        rankNavigation.tabBarItem.imageInsets = insets
        rankNavigation.navigationBar.barTintColor = barTintColor
        rankNavigation.navigationBar.titleTextAttributes = titleDict as [NSObject : AnyObject]
        
        //line view
        var lineView = UIView(frame: CGRect(x: 0, y: 64, width: self.view.frame.size.width, height: 2))
        lineView.backgroundColor = lineBgColor
        var rankView = RankViewController()
        rankView.view.addSubview(lineView)
        
        rankNavigation.viewControllers = [rankView]
    }
    
    func initMyView() {
        myNavigation = UINavigationController()
        myNavigation.tabBarItem.title = nil
        myNavigation.tabBarItem.image = UIImage(named: "me")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        myNavigation.tabBarItem.selectedImage = UIImage(named: "me_select")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        myNavigation.tabBarItem.imageInsets = insets
        myNavigation.navigationBar.barTintColor = barTintColor
        myNavigation.navigationBar.titleTextAttributes = titleDict as [NSObject : AnyObject]
        
        //line view
        var lineView = UIView(frame: CGRect(x: 0, y: 64, width: self.view.frame.size.width, height: 2))
        lineView.backgroundColor = lineBgColor
        var myView = MyViewController()
        myView.view.addSubview(lineView)
        
        myNavigation.viewControllers = [myView]
    }
}

