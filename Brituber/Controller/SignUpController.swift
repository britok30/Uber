//
//  SignUpController.swift
//  Brituber
//
//  Created by Brito on 5/21/20.
//  Copyright © 2020 Brito. All rights reserved.
//

import UIKit

class SignUpController: UIViewController {
    //MARK: - Properties
    
    private let titleLabel: UILabel = {
      let label = UILabel()
      label.text = "UBER"
      label.font = UIFont(name: "Avenir-Light", size: 36)
      label.textColor = UIColor(white: 1, alpha: 0.8)
      return label
    }()
    
    private lazy var emailContainerView: UIView = {
        let view = UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_mail_outline_white_2x"), textField: emailTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private lazy var fullnameContainerView: UIView = {
        let view = UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_person_outline_white_2x"), textField: fullnameTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private lazy var passwordContainerView: UIView = {
        let view = UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_lock_outline_white_2x"), textField: passwordTextField)
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        return view
    }()
    
    private lazy var accountTypeContainerView: UIView = {
        let view = UIView().inputContainerView(image: #imageLiteral(resourceName: "ic_account_box_white_2x"), segmentedControl: accountTypeSegmentedControl)
        view.heightAnchor.constraint(equalToConstant: 80).isActive = true
        return view
    }()
    
    // -------------------------
    
    private let emailTextField: UITextField = {
        return UITextField().textField(withPlaceHolder: "Email", isSecureTextEntry: false)
    }()
    
    private let fullnameTextField: UITextField = {
        return UITextField().textField(withPlaceHolder: "Full Name", isSecureTextEntry: false)
    }()
    
    private let passwordTextField: UITextField = {
        return UITextField().textField(withPlaceHolder: "Password", isSecureTextEntry: true)
    }()
    
    private let accountTypeSegmentedControl: UISegmentedControl = {
        let sc = UISegmentedControl(items: ["Rider", "Driver"])
        sc.backgroundColor = .backgroundColor
        sc.tintColor = UIColor(white: 1, alpha: 0.87)
        sc.selectedSegmentIndex = 0
        return sc
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        
    }
    
    //MARK: - Selectors
    
    //MARK: - Helper Functions
    func configureUI() {
          view.backgroundColor = .backgroundColor
          
          view.addSubview(titleLabel)
          titleLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor)
          titleLabel.centerX(inView: view)
          
          let stack = UIStackView(arrangedSubviews: [emailContainerView,
                                                     fullnameContainerView,
                                                     passwordContainerView,
                                                     accountTypeContainerView])
          stack.axis = .vertical
          stack.distribution = .fillProportionally
          stack.spacing = 24
          
          view.addSubview(stack)
          stack.anchor(top: titleLabel.bottomAnchor, left: view.leftAnchor, right: view.rightAnchor, paddingTop: 40, paddingLeft: 16, paddingRight: 16)
          
    }
}
