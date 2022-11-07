//
//  PostViewController.swift
//  Navigation
//
//  Created by Светлана Малюгина on 31.10.2022.
//

import Foundation
import UIKit

class PostViewController: UIViewController {
    
    //let button = UITabBarItem(title: "Navi", image: UIImage(named: "money"), tag: 1)
    // Создаю экземпляр поста
    
    var post: Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        showBarButton()
        if let post = post {
            title = post.tutle
        }
        
        
        
    }
    
    private func showBarButton() {
        let button = UIBarButtonItem(title: post?.tutle, style: .plain, target: self, action: #selector(tapAction))
            navigationItem.rightBarButtonItem = button
        }
        @objc private func tapAction() {
            let infoView = InfoViewController()
            present(infoView, animated: true)
        }
    
}
