//
//  StocksVC.swift
//  Stocks
//
//  Created by Rassul Aitkali on 21.03.2024.
//

import UIKit

class StocksVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureSearchTextField()
    }
    
    func configureSearchTextField() {
        let hStack = UIStackView()
        hStack.axis = .horizontal
        hStack.spacing = 5
        hStack.distribution = .fillProportionally
        hStack.translatesAutoresizingMaskIntoConstraints = false
        hStack.layer.cornerRadius = 25
        hStack.layer.borderWidth = 2
        hStack.layer.borderColor = UIColor.black.cgColor
        
        
        view.addSubview(hStack)
        
        let button = UIButton()
        button.setImage(UIImage(named: "Search") , for: .normal)
        
        let searchTextField = UITextField()
        searchTextField.attributedPlaceholder = NSAttributedString(string: "Find company or ticker", attributes: [NSAttributedString.Key.foregroundColor: UIColor.black, .font: UIFont(name: "MontserratRoman-SemiBold", size: 16)!])
        
        hStack.addArrangedSubview(button)
        hStack.addArrangedSubview(searchTextField)
        
        NSLayoutConstraint.activate([
            hStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            hStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            hStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            hStack.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
