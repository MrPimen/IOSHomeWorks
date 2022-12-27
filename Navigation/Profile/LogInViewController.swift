//
//  LogInViewController.swift
//  Navigation
//
//  Created by Светлана Малюгина on 28.11.2022.
//

import Foundation
import UIKit

class LogInViewController: UIViewController {
    
    private lazy var scrollView: UIScrollView = {
       let scrollView = UIScrollView()
       scrollView.translatesAutoresizingMaskIntoConstraints = false
       return scrollView
    }()
    
    
    private lazy var logInButton: UIButton = {
        let inButton = UIButton()
        inButton.setTitle("Log In", for: .normal)
        inButton.tintColor = .white
        inButton.layer.cornerRadius = 10
        inButton.translatesAutoresizingMaskIntoConstraints = false
        let backGroundImage = UIImage(named: "blue_pixel")
        let firstBackGroundImage = backGroundImage?.image(alpha: 1)
        let secondBackGroundImage = backGroundImage?.image(alpha: 0.8)
        inButton.setBackgroundImage(firstBackGroundImage, for: .normal)
        inButton.setBackgroundImage(secondBackGroundImage, for: .selected)
        inButton.setBackgroundImage(secondBackGroundImage, for: .highlighted)
        inButton.setBackgroundImage(secondBackGroundImage, for: .disabled)
        inButton.clipsToBounds = true
        inButton.addTarget(self, action: #selector(openProfile), for: .touchUpInside)
        return inButton
    
    }()
    
    private let logo: UIImageView = {
        let logoVk = UIImageView()
        logoVk.image = UIImage(named: "logo")
        logoVk.translatesAutoresizingMaskIntoConstraints = false
        return logoVk

    }()
    
    private let logInTextField: UITextField = {
        let logInField = UITextField()
        logInField.textColor = .black
        logInField.layer.borderColor = UIColor.lightGray.cgColor
        logInField.layer.borderWidth = 0.5
        logInField.font = .systemFont(ofSize: 16, weight: .regular)
        logInField.placeholder = "Email or phone"
        logInField.backgroundColor = .systemGray6
        logInField.textAlignment = .left
        logInField.clipsToBounds = false
        logInField.autocapitalizationType = .none
        logInField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: logInField.frame.height))
        logInField.leftViewMode = .always
        logInField.translatesAutoresizingMaskIntoConstraints = false
        return logInField
    }()
    
    private let passwordTextField: UITextField = {
        let password = UITextField()
        password.textColor = .black
        password.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: password.frame.height))
        password.leftViewMode = .always
        password.layer.borderColor = UIColor.lightGray.cgColor
        password.layer.borderWidth = 0.5
        password.textAlignment = .left
        password.font = .systemFont(ofSize: 16, weight: .regular)
        password.placeholder = "Password"
        password.backgroundColor = .systemGray6
        password.autocapitalizationType = .none
        password.isSecureTextEntry = true
        password.translatesAutoresizingMaskIntoConstraints = false
        return password
    }()
    
    private let stackLoginPasswordView: UIStackView = {
        let stackForTaxtFields = UIStackView()
        stackForTaxtFields.clipsToBounds = true
        stackForTaxtFields.layer.cornerRadius = 10
        stackForTaxtFields.axis = .vertical
        stackForTaxtFields.contentMode = .center
        stackForTaxtFields.layer.borderWidth = 0.5
        stackForTaxtFields.layer.borderColor = UIColor.lightGray.cgColor
        stackForTaxtFields.spacing = 0
        stackForTaxtFields.translatesAutoresizingMaskIntoConstraints = false
        return stackForTaxtFields
    }()
    
    private func setupSubviews() {
        view.addSubview(scrollView)
        scrollView.contentSize.height = 520
        scrollView.addSubview(logo)
        scrollView.addSubview(stackLoginPasswordView)
        scrollView.addSubview(logInButton)
        stackLoginPasswordView.addArrangedSubview(logInTextField)
        stackLoginPasswordView.addArrangedSubview(passwordTextField)
    }
    
    
    private func setupConstraints() {

        NSLayoutConstraint.activate([
            
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),

            logo.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 120),
            logo.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            logo.widthAnchor.constraint(equalToConstant: 100),
            logo.heightAnchor.constraint(equalToConstant: 100),

            passwordTextField.heightAnchor.constraint(equalToConstant: 50),

            stackLoginPasswordView.leadingAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            stackLoginPasswordView.trailingAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            stackLoginPasswordView.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 120),
            stackLoginPasswordView.heightAnchor.constraint(equalToConstant: 100),
            
            logInButton.heightAnchor.constraint(equalToConstant: 50),
            logInButton.topAnchor.constraint(equalTo: stackLoginPasswordView.bottomAnchor, constant: 16),
            logInButton.leadingAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            logInButton.trailingAnchor.constraint(equalTo: scrollView.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            
                ])
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.navigationController?.navigationBar.isHidden = true
        setupSubviews()
        setupConstraints()
        let tapView = UITapGestureRecognizer(target: self, action: #selector(hideKeaboard))
        view.addGestureRecognizer(tapView)


    }

    @objc func hideKeaboard() {
        view.endEditing(true)
        self.scrollView.setContentOffset(.zero, animated: true)

    }
    
    @objc func openProfile() {
        let profileView = ProfileViewController()
        navigationController?.pushViewController(profileView, animated: true)

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.addSubview(scrollView)
        NotificationCenter.default.addObserver(self, selector: #selector(scrollKeyBoard(_:)), name: UIResponder.keyboardDidShowNotification, object: nil)
    }

    @objc func scrollKeyBoard(_ notification: Notification) {
        if let keybeardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as?
            NSValue {
            let keyboardRectangle = keybeardFrame.cgRectValue
            let keyboardHeight = keyboardRectangle.height

            let logInButtonPointY = self.logInButton.frame.origin.y + self.logInButton.frame.height
            let keyboardOriginY = self.view.frame.height - keyboardHeight

            let yOffset = keyboardOriginY < logInButtonPointY
            ? logInButtonPointY - keyboardOriginY + 16
            : 0
            
            self.scrollView.contentOffset = CGPoint(x: 0, y: yOffset + 16)


        }

    }
    
    
}


extension UIImage {
    func image(alpha: CGFloat) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        draw(at: .zero, blendMode: .normal, alpha: alpha)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage
    }
}
