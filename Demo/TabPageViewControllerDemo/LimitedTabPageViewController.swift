//
//  LimitedTabPageViewController.swift
//  TabPageViewController
//
//  Created by Tomoya Hayakawa on 2017/08/05.
//
//

import UIKit
import TabPageViewController

class LimitedTabPageViewController: TabPageViewController {

    override init() {
        super.init()
        let vc1 = UIViewController()
        vc1.view.backgroundColor = UIColor.white
        let vc2 = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListViewController")
        tabItems = [
            (vc1, "First", TabType.viewController),
            (vc2, "Second", TabType.viewController),
            (UIViewController(), "Action", TabType.action)
        ]
        option.tabWidth = view.frame.width / CGFloat(tabItems.count)
        option.hidesTopViewOnSwipeType = .all
        tabDelegate = self
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LimitedTabPageViewController: TabPageViewControllerDelegate {
    func didTapActionTab(at index: Int) {
        print("ACTION: \(index)")
    }
}
