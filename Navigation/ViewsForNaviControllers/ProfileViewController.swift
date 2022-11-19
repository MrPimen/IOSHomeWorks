//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Светлана Малюгина on 31.10.2022.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {

    let profile = ProfileHeaderView()


    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(profile)
        self.title = "Profile"
        self.navigationController?.navigationBar.backgroundColor = .white
    }
    
        
        
        
        
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profile.frame = view.frame
        profile.showStatus()
        
       
    }
}
