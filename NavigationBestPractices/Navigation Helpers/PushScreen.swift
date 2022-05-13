//
//  PushScreen.swift
//  NavigationBestPractices
//
//  Created by Raj Rathod on 13/05/22.
//

import Foundation
import UIKit
import PushKit

enum PushScreen {
    case firstVC
    case secVC

    var controller: UIViewController {
        switch self {
        case .firstVC:
            let controller = FirstViewController.instantiateFromAppStoryboard(.main)
            return controller
        case .secVC:
            let controller = SecondViewController.instantiateFromAppStoryboard(.main)
            return controller

        }
    }
}
