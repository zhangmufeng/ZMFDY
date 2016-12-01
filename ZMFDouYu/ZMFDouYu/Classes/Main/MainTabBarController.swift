//
//  MainTabBarController.swift
//  ZMFDouYu
//
//  Created by Mufeng on 2016/12/1.
//  Copyright © 2016年 ZMF. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        addChildVC(storyName: "Home")
        addChildVC(storyName: "Live")
        addChildVC(storyName: "Follow")
        addChildVC(storyName: "Profile")
        
    }

    private func addChildVC(storyName: String) {
        // 1.通过SB获取控制器
        let childVC = UIStoryboard(name: storyName, bundle: nil).instantiateInitialViewController()!
        // 2.将childVC添加作为根控制器
        addChildViewController(childVC)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
