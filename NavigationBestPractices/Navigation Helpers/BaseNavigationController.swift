//
//  BaseNavigationController.swift
//  NavigationBestPractices
//
//  Created by Raj Rathod on 13/05/22.
//

import Foundation
import UIKit

class BaseNavigationController: UINavigationController {
    static var sharedInstance = BaseNavigationController()
    override func viewDidLoad() {
        super.viewDidLoad()
        type(of: self).sharedInstance = self
        configure()
        setDefaultAppearance()
      //  self.navigationItem.setHidesBackButton(true, animated: true)
    }
    
    func setupNavigationBar(_ leftButton: UIBarButtonItem, _ rightButton: UIBarButtonItem, _ title: String) {
        self.navigationItem.leftBarButtonItem = leftButton
        self.navigationItem.rightBarButtonItem = rightButton
        self.navigationController?.title = title
    }
    
    fileprivate func configure() {
        self.setRoot(.firstVC)
    }
    // set default navigation appearance
    func setDefaultAppearance() {
        UINavigationBar.appearance().isOpaque = false
        UINavigationBar.appearance().tintColor = .none
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22), NSAttributedString.Key.foregroundColor: UIColor.black]
    }
    
    // set root controller
    func setRoot(_ screen: PushScreen) {
        viewControllers = [screen.controller]
    }
    
    // push to view controller
    func push(to screen: PushScreen) {
        self.pushViewController(screen.controller, animated: true)
    }
}

class  NavigationHandler {
    class func pushTo(_ screen: PushScreen) {
        BaseNavigationController.sharedInstance.push(to: screen)
    }
    class func hideNavigationBar() {
        DispatchQueue.main.async {
            BaseNavigationController.sharedInstance.isNavigationBarHidden = true
        }
    }
    class func showNavigationBar() {
        DispatchQueue.main.async {
            BaseNavigationController.sharedInstance.isNavigationBarHidden = false
        }
    }
    class func pop() {
        BaseNavigationController.sharedInstance.popViewController(animated: true)
    }
    
    class func popTo(_ controller: UIViewController.Type) {
        BaseNavigationController.sharedInstance.viewControllers.forEach {
            if $0.isKind(of: controller) {
                BaseNavigationController.sharedInstance.popToViewController($0, animated: true)
                return
            }
        }
    }
    class func setRoot(_ controller: UIViewController) {
        BaseNavigationController.sharedInstance.viewControllers = [controller]
    }
    
    class func setRoot(_ screen: PushScreen) {
        BaseNavigationController.sharedInstance.viewControllers = [screen.controller]
    }
    
    class var stack: [UIViewController] {
        return BaseNavigationController.sharedInstance.viewControllers
    }
    
    class func loggedIn() {
        
    }
    class func logOut() {
    }
    
}
