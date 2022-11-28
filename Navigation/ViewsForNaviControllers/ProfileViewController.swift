//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Светлана Малюгина on 31.10.2022.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    private let secondButton: UIButton = {
        let friendsButton = UIButton()
        friendsButton.setTitle("Friends", for: .normal)
        friendsButton.layer.shadowRadius = 4
        friendsButton.layer.cornerRadius = 8
        friendsButton.layer.shadowOpacity = 0.7
        friendsButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        friendsButton.backgroundColor = .systemCyan
        friendsButton.setTitleColor(UIColor.white, for: .normal)
        return friendsButton
    }()

    let profile = ProfileHeaderView()
    
    private let imageForStatusBar: UIView = {
        let paintStatusBar = UIView()
        paintStatusBar.backgroundColor = .white
        paintStatusBar.frame = CGRect(x: 0, y: 0, width: 960, height: 47)
        return paintStatusBar
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        profile.translatesAutoresizingMaskIntoConstraints = false
        self.title = "Profile"
        self.navigationController?.navigationBar.backgroundColor = .white
        constraints()
        view.addSubview(imageForStatusBar)
        placeForSecondButton()
        
        
       
    }
    
    func placeForSecondButton() {
        view.addSubview(secondButton)
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        secondButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        secondButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        secondButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        secondButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }
    
  
        
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        profile.showStatus()
        profile.placeForImage()
        
       
    }
    func constraints() {
        view.addSubview(profile)
        profile.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        profile.heightAnchor.constraint(equalToConstant: 220).isActive = true
        profile.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        profile.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
    }
}
