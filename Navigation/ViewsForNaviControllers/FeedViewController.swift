//
//  FeedViewController.swift
//  Navigation
//
//  Created by Светлана Малюгина on 31.10.2022.
//

import Foundation
import UIKit

class FeedViewController: UIViewController {
    
    private lazy var showPost: UIButton = {
        let friendsButton = UIButton()
        friendsButton.setTitle("Show post", for: .normal)
        friendsButton.layer.shadowRadius = 4
        friendsButton.layer.cornerRadius = 8
        friendsButton.layer.shadowOpacity = 0.7
        friendsButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        friendsButton.backgroundColor = .systemCyan
        friendsButton.setTitleColor(UIColor.white, for: .normal)
        friendsButton.addTarget(self, action: #selector(openPost), for: .touchUpInside)
        return friendsButton
    }()
    
    private lazy var postButton: UIButton = {
        let friendsButton = UIButton()
        friendsButton.setTitle("Open post", for: .normal)
        friendsButton.layer.shadowRadius = 4
        friendsButton.layer.cornerRadius = 8
        friendsButton.layer.shadowOpacity = 0.7
        friendsButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        friendsButton.backgroundColor = .systemCyan
        friendsButton.setTitleColor(UIColor.white, for: .normal)
        friendsButton.addTarget(self, action: #selector(openPost), for: .touchUpInside)
        return friendsButton
    }()
    
    private let stackView: UIStackView = {
        let showProfile = UIStackView()
        showProfile.contentMode = .center
        showProfile.axis = .vertical
        showProfile.spacing = 10
        return showProfile
        
    }()
  
    
    private let secondPost = Post(tutle: "Open Post")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        placeForStackView()
        
    }
    
    @objc func openPost() {
        let viewPost = PostViewController()
        viewPost.post = secondPost
        navigationController?.pushViewController(viewPost, animated: true)
        
    }
    
    func placeForStackView() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(postButton)
        stackView.addArrangedSubview(showPost)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.bottomAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
    }
    
}

