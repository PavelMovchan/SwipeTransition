//
//  SwipeBackNavigationController.swift
//  SwipeTransition
//
//  Created by Tatsuya Tanaka on 20171222.
//  Copyright © 2017年 tattn. All rights reserved.
//

import UIKit

open class SwipeBackNavigationController: UINavigationController {
    
    open override var childForStatusBarHidden: UIViewController? {
        return topViewController
    }
    
    open override var prefersStatusBarHidden: Bool {
        return topViewController?.prefersStatusBarHidden ?? false
    }
        
    open override func viewDidLoad() {
        super.viewDidLoad()
        swipeBack = SwipeBackController(navigationController: self)
    }
}
