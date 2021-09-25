//
//  ViewController.swift
//  OcrProject
//
//  Created by basafou on 9/25/21.
//  Copyright © 2021 basafou. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    let OCRbutton: UIButton = {
        let Ocrbutton = UIButton()
        Ocrbutton.setTitle("Scan OCR", for: .normal)
        Ocrbutton.backgroundColor = UIColor.red
        Ocrbutton.addTarget(self, action: #selector(ActionTest), for: .touchUpInside)
        Ocrbutton.translatesAutoresizingMaskIntoConstraints = false
        return Ocrbutton
    }()

    let Qrbutton: UIButton = {
        let Qrbutton = UIButton()
        Qrbutton.setTitle("Scan QR", for: .normal)
        Qrbutton.backgroundColor = UIColor.red
        Qrbutton.addTarget(self, action: #selector(ActionTest), for: .touchUpInside)
        Qrbutton.translatesAutoresizingMaskIntoConstraints = false
        return Qrbutton
    }()
    
    let FPbutton: UIButton = {
        let FPbutton = UIButton()
        FPbutton.setTitle("Test Fingher Print", for: .normal)
        FPbutton.backgroundColor = UIColor.red
        FPbutton.addTarget(self, action: #selector(ActionTest), for: .touchUpInside)
        FPbutton.translatesAutoresizingMaskIntoConstraints = false
        return FPbutton
    }()
    
    let FaceIDButton: UIButton = {
        let FaceIDButton = UIButton()
        FaceIDButton.setTitle("Test Face ID", for: .normal)
        FaceIDButton.backgroundColor = UIColor.red
        FaceIDButton.addTarget(self, action: #selector(ActionTest), for: .touchUpInside)
        FaceIDButton.translatesAutoresizingMaskIntoConstraints = false
        return FaceIDButton
    }()

    let buttonStackView: UIStackView = {
        let buttonStackView = UIStackView()
        buttonStackView.axis = .vertical
        buttonStackView.alignment = .fill
        buttonStackView.distribution = .fillEqually
        buttonStackView.spacing = 8.0
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        return buttonStackView
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        configure()
    }
    
    private func configure() {
        self.view.backgroundColor = .white
        view.addSubview(buttonStackView)
        buttonStackView.addArrangedSubview(OCRbutton)
        buttonStackView.addArrangedSubview(Qrbutton)
        buttonStackView.addArrangedSubview(FPbutton)
        buttonStackView.addArrangedSubview(FaceIDButton)

        NSLayoutConstraint.activate([
            buttonStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonStackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            buttonStackView.widthAnchor.constraint(equalTo: view.widthAnchor,multiplier: 0.8)
        ])

    }
    
    @objc func ActionTest(sender: UIButton){
        switch (sender){
            case OCRbutton:
                self.navigationController?.pushViewController(ScanViewController(), animated: true)
            case Qrbutton:
                print("test QR")
            case FPbutton:
                print("Fingher Print test")
            case FaceIDButton:
                print("FaceID TEST")
            default:
                print("hello")
        }
    }

}

