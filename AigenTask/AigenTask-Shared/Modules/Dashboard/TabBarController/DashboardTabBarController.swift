//
//  DashboardTabBarController.swift
//  AigenTask
//
//  Created by Sanketh S D on 12/6/22.
//

import UIKit

class DashboardTabBarController: UITabBarController {
    
    var currentUser = UserDetails.fetchUser()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        view.backgroundColor = .systemBackground
        UITabBar.appearance().barTintColor = .white
        setUpbottomBar()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
    
    func setUpbottomBar() {
        viewControllers?.removeAll()
        let adds = storyboard?.instantiateViewController(withIdentifier: "AdsViewController") as! AdsViewController
        let myAdds = storyboard?.instantiateViewController(withIdentifier: "MyAdsViewController") as! MyAdsViewController
        viewControllers = [adds, myAdds]
        if let index = viewControllers?.firstIndex(of: adds) {
            tabBar.items?[index].title = "Home"
            tabBar.items?[index].image = UIImage.appAssetIcon(.home)
        }
        if let index = viewControllers?.firstIndex(of: myAdds) {
            tabBar.items?[index].title = "My Ads"
            tabBar.items?[index].image = UIImage.appAssetIcon(.myAds)
        }
    }
    
}

extension DashboardTabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController is AdsViewController {
            
        }
        
        if viewController is MyAdsViewController {
            
        }
        return true
    }
}


