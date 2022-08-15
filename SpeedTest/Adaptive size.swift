//
//  Adaptive size.swift
//  SpeedTest
//
//  Created by Vlad Lytvynets on 15.08.2022.
//

import Foundation

extension ViewController {
    func adaptiveSize() {
        if view.layer.frame.height == 896 {
            circleTopSize = 3.4
            infoImageBottomSize = -150
            
            numberNullLeftAnchor = 90
            numberNullLabelTopAnchor = 435
            
            numberOneLabelLeftAnchor = 65
            numberOneLabelTopAnchor = 360
            
            numberFiveLabelLeftAnchor = 85
            numberFiveLabelTopAnchor = 290
            
            numberTenLabelLeftAnchor = 130
            numberTenLabelTopAnchor = 235
            
            numberTwentyLabelTopAnchor = 220
            
            numberThirtyLabelRightAnchor = -130
            numberThirtyLabelTopAnchor = 235
            
            numberFiftyLabelRightAnchor = -85
            numberFiftyLabelTopAnchor = 290
            
            numberSeventyFiveLabelRightAnchor = -65
            numberSeventyFiveLabelTopAnchor = 360
            
            numberOneHundredLabelRightAnchor = -90
            numberOneHundredLabelTopAnchor = 435
            print("iPhone 11")
        } else if view.layer.frame.height == 667 {
            circleTopSize = 3.8
            infoImageBottomSize = -30
            
            numberNullLeftAnchor = 73
            numberNullLabelTopAnchor = 343
            
            numberOneLabelLeftAnchor = 52
            numberOneLabelTopAnchor = 276
            
            numberFiveLabelLeftAnchor = 69
            numberFiveLabelTopAnchor = 208
            
            numberTenLabelLeftAnchor = 110
            numberTenLabelTopAnchor = 155
            
            numberTwentyLabelTopAnchor = 132
            
            numberThirtyLabelRightAnchor = -110
            numberThirtyLabelTopAnchor = 155
            
            numberFiftyLabelRightAnchor = -67
            numberFiftyLabelTopAnchor = 211
            
            numberSeventyFiveLabelRightAnchor = -51
            numberSeventyFiveLabelTopAnchor = 278
            
            numberOneHundredLabelRightAnchor = -72
            numberOneHundredLabelTopAnchor = 343
            print("iPhone 8")
            
            
        } else if view.layer.frame.height == 736 {
            circleTopSize = 3.5
            infoImageBottomSize = -30
            
            numberNullLeftAnchor = 90
            numberNullLabelTopAnchor = 370
            
            numberOneLabelLeftAnchor = 70
            numberOneLabelTopAnchor = 300
            
            numberFiveLabelLeftAnchor = 80
            numberFiveLabelTopAnchor = 234
            
            numberTenLabelLeftAnchor = 125
            numberTenLabelTopAnchor = 175
            
            numberTwentyLabelTopAnchor = 150
            
            numberThirtyLabelRightAnchor = -125
            numberThirtyLabelTopAnchor = 175
            
            numberFiftyLabelRightAnchor = -80
            numberFiftyLabelTopAnchor = 234
            
            numberSeventyFiveLabelRightAnchor = -70
            numberSeventyFiveLabelTopAnchor = 300
            
            numberOneHundredLabelRightAnchor = -90
            numberOneHundredLabelTopAnchor = 370
            print("iPhone 8 plus")
        } else {
            circleTopSize = 3.4
            infoImageBottomSize = -150
            
            numberNullLeftAnchor = 90
            numberNullLabelTopAnchor = 435
            
            numberOneLabelLeftAnchor = 65
            numberOneLabelTopAnchor = 360
            
            numberFiveLabelLeftAnchor = 85
            numberFiveLabelTopAnchor = 290
            
            numberTenLabelLeftAnchor = 130
            numberTenLabelTopAnchor = 235
            
            numberTwentyLabelTopAnchor = 220
            
            numberThirtyLabelRightAnchor = -130
            numberThirtyLabelTopAnchor = 235
            
            numberFiftyLabelRightAnchor = -85
            numberFiftyLabelTopAnchor = 290
            
            numberSeventyFiveLabelRightAnchor = -65
            numberSeventyFiveLabelTopAnchor = 360
            
            numberOneHundredLabelRightAnchor = -90
            numberOneHundredLabelTopAnchor = 435
            print("else")
        }
    }
}
