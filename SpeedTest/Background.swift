//
//  Background.swift
//  SpeedTest
//
//  Created by Vlad Lytvynets on 14.08.2022.
//

import Foundation
import UIKit

extension ViewController {
    func setGradientBackground() {
        let colorTop = #colorLiteral(red: 0.4518486857, green: 0.4569447041, blue: 0.8470944762, alpha: 1).cgColor
        let colorBottom = #colorLiteral(red: 0.2868671417, green: 0.3039170504, blue: 0.6675114036, alpha: 1).cgColor
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [colorTop, colorBottom]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.frame = self.view.bounds
        self.view.layer.insertSublayer(gradientLayer, at:0)
    }
    
    
    func backgroundImageConstraint(){
        NSLayoutConstraint.activate([
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
