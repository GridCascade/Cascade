//
//  AppDelegate.swift
//  Cascade
//
//  Created by Dmitrii on 23/05/2017.
//  Copyright © 2017 GridCascade. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var rootNavigationController: UINavigationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        if let demoVC = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? DemoViewController {
            demoVC.delegate = self
            rootNavigationController = UINavigationController(rootViewController: demoVC)
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.rootViewController = rootNavigationController
            window?.makeKeyAndVisible()
        }
        return true
    }
}

extension AppDelegate: DemoViewControllerDelegate {

    internal func pickDemoDataSourse(numberOfItems: UInt) {
        let cascade = Cascade(fakeItemCount: numberOfItems)
        let cascadeView = cascade.viewToPresent()
        let newController = UIViewController()
        newController.view.backgroundColor = UIColor.lightGray
        newController.view.addSubview(cascadeView)
        cascadeView.autoPinEdgesToSuperviewEdges()
        rootNavigationController?.pushViewController(newController, animated: true)
    }
}
