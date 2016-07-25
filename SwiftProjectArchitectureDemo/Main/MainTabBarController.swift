//
//  MainTabBarController.swift
//  SwiftProjectArchitectureDemo
//
//  Created by mac_zhu on 16/7/22.
//  Copyright © 2016年 mac_zhu. All rights reserved.
//
let width = UIScreen.mainScreen().bounds.size.width
let height = UIScreen.mainScreen().bounds.size.height

import UIKit

class MainTabBarController: UITabBarController
{
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        // 判断控制器是否是有控制器
       print("eeeeee")
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.grayColor()
        
        self.creatSubViewController()
    }
    
    func creatSubViewController()
    {
        // 1.第一个控制器
        let firstVC = FirstViewController()
        self.addChildViewController(firstVC, title: "第一页面", image:  "tabbar_home", selectImg: "tabbar_home_highlighted")
        
        // 2.第二个控制器
        let secondVC = SecondViewController()
        self.addChildViewController(secondVC, title: "第二页面", image:  "tabbar_home", selectImg: "tabbar_home_highlighted")
        
        // 3.第三个控制器
        let thirthVC = ThirhViewController()
        self.addChildViewController(thirthVC, title: "第三页面", image:  "tabbar_home", selectImg: "tabbar_home_highlighted")
        
        // 4.第四个控制器
        let fourthVC = FourthViewController()
        self.addChildViewController(fourthVC, title: "第四页面", image:  "tabbar_home", selectImg: "tabbar_home_highlighted")
        
        
        /*------------------设置tabbar工具栏------------------*/
        let tabbar = self.tabBar
        
        //设置tabBar的背景图片
        var img = UIImage(named: "navbg.png")
        UIGraphicsBeginImageContext(CGSizeMake(width, 49))
        img?.drawInRect(CGRectMake(0, 0, width, 49))
        img = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        tabbar.backgroundImage = img
        //设置tabBar的选中图片颜色
        tabbar.tintColor = UIColor.redColor()
        
        //设置选中item后，盖在此item上的图片
        tabbar.selectionIndicatorImage = UIImage(named: "选中.png")
        
        //为item是指一个小图标
//        item1.badgeValue = "New";

    }
    
    /**
     *  添加一个子控制器
     *
     *  @param child         子控制器
     *  @param title         标题
     *  @param image         图标
     *  @param selectedImage 选中时的图标
     */
    func addChildViewController(childVC:UIViewController,title:String,image:String,selectImg:String)
    {
        // 1.设置标题和图标
        let items : UITabBarItem = UITabBarItem (title: title, image: UIImage(named: image), selectedImage: UIImage(named: selectImg))
        childVC.tabBarItem = items
        
        childVC.title = title
        let rootNavController = UINavigationController(rootViewController: childVC)
//        rootNavController.navigationBarHidden = true; // 隐藏导航栏
        
        self.addChildViewController(rootNavController)
    }
}
