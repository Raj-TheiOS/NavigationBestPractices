//
//  AppStoryboard.swift
//  NavigationBestPractices
//
//  Created by Raj Rathod on 13/05/22.
//

import UIKit

enum AppStoryboard: String {
    
    case main = "Main"

    var instance : UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: Bundle.main)
    }
    
    func viewController<T: UIViewController>(_ controller: T.Type) -> T {
        let storyBoardId = (controller as UIViewController.Type).storyboardId
        return instance.instantiateViewController(withIdentifier: storyBoardId) as! T
    }
}
