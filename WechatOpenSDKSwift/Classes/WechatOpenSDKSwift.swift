//
//  WechatOpenSDKSwift.swift
//  Pods-WechatOpenSDKSwift_Example
//
//  Created by Li on 2020/6/3.
//

import Foundation

public class WechatOpenSDKSwift {
    public class func regist(appId:String, universalLink: String) {
        WXApi.registerApp(appId, universalLink: universalLink)
    }
}
