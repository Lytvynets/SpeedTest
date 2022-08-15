//
//  Setup.swift
//  SpeedTest
//
//  Created by Vlad Lytvynets on 14.08.2022.
//

import Foundation
import UIKit

extension ViewController {
    func setup() {
        view.addSubview(infoImageView)
        view.addSubview(backgroundImageView)
        view.addSubview(arrow)
        view.addSubview(centerCircle)
        view.addSubview(startButton)
        view.addSubview(stopButton)
        view.addSubview(speedTestButton)
        view.addSubview(backButton)
        
        view.addSubview(numberNullLabel)
        view.addSubview(numberOneLabel)
        view.addSubview(numberFiveLabel)
        view.addSubview(numberTenLabel)
        view.addSubview(numberTwentyLabel)
        view.addSubview(numberThirtyLabel)
        view.addSubview(numberFiftyLabel)
        view.addSubview(numberSeventyFiveLabel)
        view.addSubview(numberOneHundredLabel)
        
        infoImageView.addSubview(resultLabel)
        infoImageView.addSubview(downloadLabel)
        infoImageView.addSubview(uploadLabel)
        infoImageView.addSubview(pingLabel)
        infoImageView.addSubview(connectTypeLabel)
        infoImageView.addSubview(ipAdressLabel)
        infoImageView.addSubview(providerLabel)
        
        infoImageView.addSubview(downloadValue)
        infoImageView.addSubview(uploadValue)
        infoImageView.addSubview(pingValue)
        infoImageView.addSubview(connectTypeValue)
        infoImageView.addSubview(ipAdressValue)
        infoImageView.addSubview(providerValue)
        
        numbersConstraints()
        
        centerCircle.addSubview(logoImage)
        stopButton.isHidden = true
        
        //Shape Layer
        archShapeLayer = CAShapeLayer()
        overArchShapeLayer = CAShapeLayer()
        view.layer.addSublayer(archShapeLayer)
        view.layer.addSublayer(overArchShapeLayer)
        
        navigationButtonsConstraints()
        logoImageConstraints()
        centerCircleConstraints()
        arrowConstraints()
        startButtonConstraints()
        stopButtonConstraints()
        imageViewInfoConstraints()
        setGradientBackground()
        backgroundImageConstraint()
        
        resultLabelConstraints()
        downloadLabelConstraints()
        uploadLabelConstraints()
        pingLabelConstraints()
        connectTypeLabelConstraints()
        ipAdressLabelConstraints()
        providerLabelConstraints()
        
        downloadValueConstraints()
        uploadValueConstraints()
        pingValueConstraints()
        connectTypeValueConstraints()
        ipAdressValueConstraints()
        providerValueConstraints()
        
        print("\(view.layer.frame.height)")
    }
}
