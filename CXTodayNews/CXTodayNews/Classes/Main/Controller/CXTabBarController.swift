//
//  CXTabBarController.swift
//  CXTodayNews
//
//  Created by CXTretar on 2021/2/5.
//

import UIKit

class CXTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tabbar = UITabBar.appearance()
        tabbar.tintColor = UIColor(red: 245/255.0, green: 90/255.0, blue: 93/255.0, alpha: 1.0)
        
        addChildViewControllers()
        
        // 打印 UITabBarController 的所有成员变量
//        CXClassInfoTool.ivarsList(UITabBarController.self)
        // Do any additional setup after loading the view.
    }
    
    // 添加子控制器
    func addChildViewControllers() {
        setChildViewController(HomeViewController(), title: "首页", imageName: "home_tabbar_32x32_", selectedImage: "home_tabbar_press_32x32_")
        setChildViewController(VideoViewController(), title: "视频", imageName: "video_tabbar_32x32_", selectedImage: "video_tabbar_press_32x32_")
        setChildViewController(VolcanoViewController(), title: "小视频", imageName: "huoshan_tabbar_32x32_", selectedImage: "huoshan_tabbar_press_32x32_")
        setChildViewController(MineViewController(), title: "我的", imageName: "mine_tabbar_32x32_", selectedImage: "mine_tabbar_press_32x32_")
        // 使用 KVC 把 readonly 属性的 tabbar 进行自定义修改
        setValue(CXTabbar(), forKey: "_tabBar")
    }
    
    /// 初始化子控制器
    func setChildViewController(_ childController:UIViewController, title : String, imageName: String, selectedImage:String) {
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.selectedImage = UIImage(named: selectedImage)
        childController.title = title
        // 添加导航控制器为 TabBarController 的子控制器
        let navigationVC  = CXNavigationController(rootViewController: childController)
        addChild(navigationVC)
    }
    
}
