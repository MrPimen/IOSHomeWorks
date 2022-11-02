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
    
    let post = Post(tutle: "More Info")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        showBarButton()
        
        
      //  let barButton = UIBarButtonItem(title: post.tutle, style: .done, target: //self, action: #selector(showPost))
    //    self.navigationItem.rightBarButtonItem  = barButton
        
  //  }
  //  @objc func showPost() {
        
   //     let infoView = InfoViewController()
        
    //    navigationController?.pushViewController(infoView, animated: true)
        
        
        
        
    }
    
    private func showBarButton() {
        let button = UIBarButtonItem(title: post.tutle, style: .plain, target: self, action: #selector(tapAction))
            navigationItem.rightBarButtonItem = button
        }
        @objc private func tapAction() {
            let forthVC = InfoViewController()
            present(forthVC, animated: true)
        }
    
}
