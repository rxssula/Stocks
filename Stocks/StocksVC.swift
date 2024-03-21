//
//  StocksVC.swift
//  Stocks
//
//  Created by Rassul Aitkali on 21.03.2024.
//

import UIKit

class StocksVC: UIViewController {
    
    let searchTextField = SearchTextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureSearchTextField()
    }
    
    func configureSearchTextField() {
        view.addSubview(searchTextField)
        
        NSLayoutConstraint.activate([
            searchTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            searchTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            searchTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            searchTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
