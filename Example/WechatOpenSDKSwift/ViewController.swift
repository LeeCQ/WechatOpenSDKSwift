//
//  ViewController.swift
//  WechatOpenSDKSwift
//
//  Created by 李昌庆 on 06/02/2020.
//  Copyright (c) 2020 李昌庆. All rights reserved.
//

import UIKit
import WechatOpenSDKSwift
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        WechatOpenSDKSwift.regist(appId: "", universalLink: "")
//        WXApi.registerApp("", universalLink: "")

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

