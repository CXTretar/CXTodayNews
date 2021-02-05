//
//  Common.swift
//  CXTodayNews
//
//  Created by CXTretar on 2021/2/5.
//

import UIKit

let kScreenH: CGFloat = UIScreen.main.bounds.height
let kScreenW: CGFloat = UIScreen.main.bounds.width

//状态栏高度
let kStatusBarHeight = UIApplication.shared.statusBarFrame.height;
//导航栏高度
let kNavigationHeight = (kStatusBarHeight + 44)
//tabbar高度
let kTabBarHeight = (kStatusBarHeight == 44 ? 83 : 49)
//顶部的安全距离
let kTopSafeAreaHeight = (kStatusBarHeight - 20)
//底部的安全距离
let kBottomSafeAreaHeight = (kTabBarHeight - 49)
