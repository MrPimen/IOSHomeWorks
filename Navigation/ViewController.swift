//
//  ViewController.swift
//  Navigation
//
//  Created by Светлана Малюгина on 30.10.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
       
    }

}

class FirstTabBarController: UITabBarController {
    
    var firstTabBarController : UINavigationController!
    
    var secondTabBarController : UINavigationController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        twoRoots()
    }
    
    // Задаем в качестве рутовых
    
    private func twoRoots() {
        
        firstTabBarController = UINavigationController.init(rootViewController: FeedViewController())
        
        secondTabBarController = UINavigationController.init(rootViewController: ProfileViewController())
        
        // Создаем массив в который пушим конроллеры
        
        self.viewControllers = [firstTabBarController, secondTabBarController]
        
        // создаем экземпляры кнопок
        
        let bar1 = UITabBarItem(title: "News", image: UIImage(systemName: "airplane"), tag: 0)
        
        let bar2 = UITabBarItem(title: "User", image: UIImage(systemName: "folder"), tag: 1)
        
        firstTabBarController.tabBarItem = bar1
        
        secondTabBarController.tabBarItem = bar2
        
        UITabBar.appearance().tintColor = UIColor(red: 0/100.0, green: 81/200.0, blue: 211/312.0, alpha: 1.0)
        UITabBar.appearance().backgroundColor = .white
        
    }
    
}
