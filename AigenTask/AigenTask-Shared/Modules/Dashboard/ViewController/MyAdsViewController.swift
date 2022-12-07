//
//  MyAdsViewController.swift
//  AigenTask
//
//  Created by Sanketh S D on 12/6/22.
//

import UIKit

class MyAdsViewController: UIViewController {
    
    @IBOutlet weak var noPostView: UIView!
    @IBOutlet weak var myAdsView: UIView!
    
    @IBOutlet weak var myAdsTableView: UITableView!
    
    var myPosts: [Cars] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if(myPosts.count == 0){
            noPostView.isHidden = false
            myAdsView.isHidden = true
        }else{
            noPostView.isHidden = true
            myAdsView.isHidden = false
        }
        
        
        
        
    }
    
}
