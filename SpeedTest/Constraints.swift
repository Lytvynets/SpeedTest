//
//  Constraints.swift
//  SpeedTest
//
//  Created by Vlad Lytvynets on 14.08.2022.
//

import Foundation
import UIKit

extension ViewController {
    func navigationButtonsConstraints() {
        NSLayoutConstraint.activate([
            speedTestButton.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            speedTestButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            backButton.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            backButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15)
        ])
    }
    
    
    func resultLabelConstraints() {
        NSLayoutConstraint.activate([
            resultLabel.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 12),
            resultLabel.leftAnchor.constraint(equalTo: infoImageView.leftAnchor, constant: 34)
        ])
    }
    
    
    func downloadLabelConstraints() {
        NSLayoutConstraint.activate([
            downloadLabel.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 50),
            downloadLabel.leftAnchor.constraint(equalTo: infoImageView.leftAnchor, constant: 34)
        ])
    }
    
    
    func uploadLabelConstraints() {
        NSLayoutConstraint.activate([
            uploadLabel.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 76),
            uploadLabel.leftAnchor.constraint(equalTo: infoImageView.leftAnchor, constant: 34)
        ])
    }
    
    
    func pingLabelConstraints() {
        NSLayoutConstraint.activate([
            pingLabel.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 102),
            pingLabel.leftAnchor.constraint(equalTo: infoImageView.leftAnchor, constant: 34)
        ])
    }
    
    
    func connectTypeLabelConstraints() {
        NSLayoutConstraint.activate([
            connectTypeLabel.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 128),
            connectTypeLabel.leftAnchor.constraint(equalTo: infoImageView.leftAnchor, constant: 34)
        ])
    }
    
    
    func ipAdressLabelConstraints() {
        NSLayoutConstraint.activate([
            ipAdressLabel.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 154),
            ipAdressLabel.leftAnchor.constraint(equalTo: infoImageView.leftAnchor, constant: 34)
        ])
    }
    
    
    func providerLabelConstraints() {
        NSLayoutConstraint.activate([
            providerLabel.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 180),
            providerLabel.leftAnchor.constraint(equalTo: infoImageView.leftAnchor, constant: 34)
        ])
    }
    
    
    func downloadValueConstraints() {
        NSLayoutConstraint.activate([
            downloadValue.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 50),
            downloadValue.rightAnchor.constraint(equalTo: infoImageView.rightAnchor, constant: -34)
        ])
    }
    
    
    func uploadValueConstraints() {
        NSLayoutConstraint.activate([
            uploadValue.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 76),
            uploadValue.rightAnchor.constraint(equalTo: infoImageView.rightAnchor, constant: -34)
        ])
    }
    
    
    func pingValueConstraints() {
        NSLayoutConstraint.activate([
            pingValue.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 102),
            pingValue.rightAnchor.constraint(equalTo: infoImageView.rightAnchor, constant: -34)
        ])
    }
    
    
    func connectTypeValueConstraints() {
        NSLayoutConstraint.activate([
            connectTypeValue.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 128),
            connectTypeValue.rightAnchor.constraint(equalTo: infoImageView.rightAnchor, constant: -34)
        ])
    }
    
    
    func ipAdressValueConstraints() {
        NSLayoutConstraint.activate([
            ipAdressValue.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 154),
            ipAdressValue.rightAnchor.constraint(equalTo: infoImageView.rightAnchor, constant: -34)
        ])
    }
    
    
    func providerValueConstraints() {
        NSLayoutConstraint.activate([
            providerValue.topAnchor.constraint(equalTo: infoImageView.topAnchor, constant: 180),
            providerValue.rightAnchor.constraint(equalTo: infoImageView.rightAnchor, constant: -34)
        ])
    }
    
    
    func arrowConstraints() {
        NSLayoutConstraint.activate([
            arrow.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 80),
            arrow.topAnchor.constraint(equalTo: centerCircle.topAnchor, constant: 100)
        ])
    }
    
    
    func startButtonConstraints() {
        NSLayoutConstraint.activate([
            startButton.centerXAnchor.constraint(equalTo: centerCircle.centerXAnchor),
            startButton.topAnchor.constraint(equalTo: centerCircle.topAnchor, constant: 110)
        ])
    }
    
    
    func stopButtonConstraints() {
        NSLayoutConstraint.activate([
            stopButton.centerXAnchor.constraint(equalTo: centerCircle.centerXAnchor),
            stopButton.topAnchor.constraint(equalTo: centerCircle.topAnchor, constant: 110)
        ])
    }
    
    
    func logoImageConstraints() {
        NSLayoutConstraint.activate([
            logoImage.centerXAnchor.constraint(equalTo: centerCircle.centerXAnchor),
            logoImage.topAnchor.constraint(equalTo: centerCircle.topAnchor, constant: 51)
        ])
    }
    
    
    func centerCircleConstraints() {
        NSLayoutConstraint.activate([
            centerCircle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            centerCircle.topAnchor.constraint(equalTo: view.topAnchor, constant: view.layer.frame.height / circleTopSize)
        ])
    }
    
    
    func imageViewInfoConstraints() {
        NSLayoutConstraint.activate([
            infoImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant:  infoImageBottomSize),
            infoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    
    func numbersConstraints() {
        NSLayoutConstraint.activate([
            numberNullLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: numberNullLeftAnchor),
            numberNullLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: numberNullLabelTopAnchor),
            
            numberOneLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: numberOneLabelLeftAnchor),
            numberOneLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: numberOneLabelTopAnchor),
            
            numberFiveLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: numberFiveLabelLeftAnchor),
            numberFiveLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: numberFiveLabelTopAnchor),
            
            numberTenLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: numberTenLabelLeftAnchor),
            numberTenLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: numberTenLabelTopAnchor),
            
            numberTwentyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            numberTwentyLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: numberTwentyLabelTopAnchor),
            
            numberThirtyLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: numberThirtyLabelRightAnchor),
            numberThirtyLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: numberThirtyLabelTopAnchor),
            
            numberFiftyLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: numberFiftyLabelRightAnchor),
            numberFiftyLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: numberFiftyLabelTopAnchor),
            
            numberSeventyFiveLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: numberSeventyFiveLabelRightAnchor),
            numberSeventyFiveLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: numberSeventyFiveLabelTopAnchor),
            
            numberOneHundredLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: numberOneHundredLabelRightAnchor),
            numberOneHundredLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: numberOneHundredLabelTopAnchor)
        ])
    }
}
