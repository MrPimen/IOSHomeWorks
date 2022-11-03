//
//  optionForPay.swift
//  Navigation
//
//  Created by Светлана Малюгина on 01.11.2022.
//

import Foundation
import UIKit

class InfoViewController: UIViewController {
    
    let alert = UIAlertController(title: "Welcome dude", message: "Have a good day, man!", preferredStyle: .alert)
    
    private let showPostMassage: UIButton = {
        let button = UIButton()
        button.setTitle("Push it", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        return button
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        view.addSubview(showPostMassage)
        showPostMassage.frame = CGRect(x: 100, y: 300, width: 150, height: 70)
        action()
        addAction()
        
        
    }
    
    func action() {
        showPostMassage.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }
    
    @objc
    func tapButton() {
        self.present(alert, animated: true, completion: nil)
    }
    
    func addAction() {
        let action = UIAlertAction(title: "Back", style: .default) {_ in
            print("Bye")
        }
        let secondAction = UIAlertAction(title: "Log In", style: .default) {_ in
            print("success")
        }
        alert.addAction(action)
        alert.addAction(secondAction)
    }
    
    
    
}

