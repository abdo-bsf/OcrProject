//
//  ScanImageView.swift
//  OcrProject
//
//  Created by basafou on 9/25/21.
//  Copyright © 2021 basafou. All rights reserved.
//

import Foundation
import UIKit

class ScanOCRImageView: UIImageView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        layer.cornerRadius = 7.0
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.systemIndigo.cgColor
        backgroundColor = UIColor.init(white: 1.0, alpha: 0.1)
        clipsToBounds = true
    }
}
