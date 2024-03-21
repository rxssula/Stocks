//
//  SearchTextField.swift
//  Stocks
//
//  Created by Rassul Aitkali on 21.03.2024.
//

import UIKit

class SearchTextField: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 25
        layer.borderWidth = 2
        layer.borderColor = UIColor.black.cgColor
        
        textColor = .label
        tintColor = .label
        font = UIFont.preferredFont(forTextStyle: .title2)
        
        autocorrectionType = .no
        placeholder = "Find company or ticker"
        
        self.setLeftPaddingPoints(20)
    }
    
    private func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    private func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
