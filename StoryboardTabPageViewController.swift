//
//  StoryboardTabPageViewController.swift
//  TabPageViewController
//
//  Created by Seiya Mogami on 2018/02/23.
//

import Foundation
import UIKit

class StoryboardTabPageViewController: TabPageViewController {
    var vcs: [UIViewController] = [
        UIViewController(), UIViewController(), UIViewController()
    ]

    override func viewDidLoad() {
        print("view did load")

        for (i, vc) in vcs.enumerated() {
            self.tabItems.append(TabItem(title: "viewcontroller\(i)", viewController: vc))
        }
        super.viewDidLoad()
    }
}
