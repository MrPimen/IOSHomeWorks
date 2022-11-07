//
//  FeedViewController.swift
//  Navigation
//
//  Created by Светлана Малюгина on 31.10.2022.
//

import Foundation
import UIKit

class FeedViewController: UIViewController {
    
    private let secondPost = Post(tutle: "Open Post")
    
        // Создаем кнопку
    
    private let showPostButton: UIButton = {
        let button = UIButton()
        button.setTitle("Open", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        view.addSubview(showPostButton)
        showPostButton.frame = CGRect(x: 100, y: 300, width: 150, height: 200)
        addTarget()
        
    }
    
    func addTarget() {
        showPostButton.addTarget(self, action: #selector(pushTheButton), for: .touchUpInside)
    }
    
    @objc
    func pushTheButton() {
        
        let extraView = PostViewController()
        extraView.post = secondPost
        
        navigationController?.pushViewController(extraView, animated: true)
       
    }
    
}

