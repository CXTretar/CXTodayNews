//
//  CXClassInfoTool.swift
//  CXTodayNews
//
//  Created by CXTretar on 2021/2/5.
//

import UIKit

class CXClassInfoTool: NSObject {
    
  class func ivarsList(_ target: AnyClass) {
        var count: UInt32 = 0;
        
        let ivarsList = class_copyIvarList(target, &count)
        
        for i in 0..<Int(count) {
            let ivar = ivarsList![i]
            let ivarName = String(utf8String: ivar_getName(ivar)!) ?? ""
            let ivarType = String(utf8String: ivar_getTypeEncoding(ivar)!) ?? ""
            
            let ivarInfo = ivarName + " -- " + ivarType
            print(ivarInfo)
        }
    }
}
