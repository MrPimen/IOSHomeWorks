//
//  PostViewController.swift
//  Navigation
//
//  Created by Светлана Малюгина on 31.10.2022.
//

import Foundation
import UIKit

class PostViewController: UIViewController {
    
    private let showPostButton: UIButton = {
        let button = UIButton()
        button.setTitle("Открыть счет", for: .normal)
        button.setTitleColor(UIColor.systemGray6, for: .normal)
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        view.addSubview(showPostButton)
        showPostButton.frame = CGRect(x: 100, y: 200, width: 50, height: 70)
        addTarget()
    }
    
    func addTarget() {
        showPostButton.addTarget(self, action: #selector(pushTheButton), for: .touchUpInside)
    }
    
    @objc
    func pushTheButton() {
        
        let extraView = PostViewController()
        
        navigationController?.pushViewController(extraView, animated: true)
        
    }
}
