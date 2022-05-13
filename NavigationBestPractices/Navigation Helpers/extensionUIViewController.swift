//
//  extensionUIViewController.swift
//  NavigationBestPractices
//
//  Created by Raj Rathod on 13/05/22.
//

import Foundation
import UIKit

extension UIViewController {
    class var storyboardId: String {
        return "\(self)"
    }
    static func instantiateFromAppStoryboard(_ appStoryboard: AppStoryboard) -> Self {
        return appStoryboard.viewController(self)
    }
    
}

