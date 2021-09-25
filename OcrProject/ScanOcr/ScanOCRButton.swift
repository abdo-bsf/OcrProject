//
//  ScanButton.swift
//  OcrProject
//
//  Created by basafou on 9/25/21.
//  Copyright © 2021 basafou. All rights reserved.
//

import Foundation
import UIKit

class ScanOCRButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        setTitle("Scan document", for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 18.0)
        titleLabel?.textColor = .white
        layer.cornerRadius = 7.0
        backgroundColor = UIColor.red
    }
}
