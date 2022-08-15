//
//  ViewController.swift
//  SpeedTest
//
//  Created by Vlad Lytvynets on 13.08.2022.
//

import UIKit

class ViewController: UIViewController, CAAnimationDelegate {
    
    var circleTopSize: Double = 0.0
    var infoImageBottomSize: Double = 0.0
    
    var numberNullLeftAnchor: Double = 0.0
    var numberNullLabelTopAnchor: Double = 0.0
    
    var numberOneLabelLeftAnchor: Double = 0.0
    var numberOneLabelTopAnchor: Double = 0.0
    
    var numberFiveLabelLeftAnchor: Double = 0.0
    var numberFiveLabelTopAnchor: Double = 0.0
    
    var numberTenLabelLeftAnchor: Double = 0.0
    var numberTenLabelTopAnchor: Double = 0.0
    
    var numberTwentyLabelTopAnchor: Double = 0.0
    
    var numberThirtyLabelRightAnchor: Double = 0.0
    var numberThirtyLabelTopAnchor: Double = 0.0
    
    var numberFiftyLabelRightAnchor: Double = 0.0
    var numberFiftyLabelTopAnchor: Double = 0.0
    
    var numberSeventyFiveLabelRightAnchor: Double = 0.0
    var numberSeventyFiveLabelTopAnchor: Double = 0.0
    
    var numberOneHundredLabelRightAnchor: Double = 0.0
    var numberOneHundredLabelTopAnchor: Double = 0.0
    
    
    
    //MARK: - Navigations buttons
    lazy var speedTestButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Group 14"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "Vector2"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    //MARK: - Info label
    lazy var resultLabel: UILabel = {
        let label = UILabel()
        label.text = "Result: "
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = #colorLiteral(red: 0.2954347432, green: 0.312394917, blue: 0.6748702526, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var downloadLabel: UILabel = {
        let label = UILabel()
        label.text = "Download: "
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.387296319, green: 0.3872962892, blue: 0.3872962892, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var uploadLabel: UILabel = {
        let label = UILabel()
        label.text = "Upload: "
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.387296319, green: 0.3872962892, blue: 0.3872962892, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var pingLabel: UILabel = {
        let label = UILabel()
        label.text = "Ping: "
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.387296319, green: 0.3872962892, blue: 0.3872962892, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var connectTypeLabel: UILabel = {
        let label = UILabel()
        label.text = "Connect type: "
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.387296319, green: 0.3872962892, blue: 0.3872962892, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var ipAdressLabel: UILabel = {
        let label = UILabel()
        label.text = "ip-Adress: "
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.387296319, green: 0.3872962892, blue: 0.3872962892, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var providerLabel: UILabel = {
        let label = UILabel()
        label.text = "Provider: "
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.387296319, green: 0.3872962892, blue: 0.3872962892, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    //MARK: - Info labels value
    lazy var resultValue: UILabel = {
        let label = UILabel()
        label.text = "-"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = #colorLiteral(red: 0.2954347432, green: 0.312394917, blue: 0.6748702526, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var downloadValue: UILabel = {
        let label = UILabel()
        label.text = "-"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.387296319, green: 0.3872962892, blue: 0.3872962892, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var uploadValue: UILabel = {
        let label = UILabel()
        label.text = "-"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.387296319, green: 0.3872962892, blue: 0.3872962892, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var pingValue: UILabel = {
        let label = UILabel()
        label.text = "-"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.387296319, green: 0.3872962892, blue: 0.3872962892, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var connectTypeValue: UILabel = {
        let label = UILabel()
        label.text = "-"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.387296319, green: 0.3872962892, blue: 0.3872962892, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var ipAdressValue: UILabel = {
        let label = UILabel()
        label.text = "-"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.387296319, green: 0.3872962892, blue: 0.3872962892, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var providerValue: UILabel = {
        let label = UILabel()
        label.text = "-"
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = #colorLiteral(red: 0.387296319, green: 0.3872962892, blue: 0.3872962892, alpha: 1)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    //MARK: - Arch shape layer
    var archShapeLayer: CAShapeLayer! {
        didSet {
            archShapeLayer.lineWidth = 15
            archShapeLayer.lineCap = .round
            archShapeLayer.fillColor = nil
            archShapeLayer.strokeEnd = 1
            archShapeLayer.strokeColor = UIColor.white.cgColor
        }
    }
    
    
    var overArchShapeLayer: CAShapeLayer! {
        didSet {
            overArchShapeLayer.lineWidth = 15
            overArchShapeLayer.lineCap = .round
            overArchShapeLayer.fillColor = nil
            overArchShapeLayer.strokeEnd = 0
            overArchShapeLayer.shadowColor = #colorLiteral(red: 0.2095739802, green: 0.6141671327, blue: 0.9017477181, alpha: 0.8932895281)
            overArchShapeLayer.shadowRadius = 5.0
            overArchShapeLayer.shadowOpacity = 1.0
            overArchShapeLayer.strokeColor = #colorLiteral(red: 0.2954347432, green: 0.312394917, blue: 0.6748702526, alpha: 1)
        }
    }
    
    
    
    //MARK: - Start / Stop button
    lazy var startButton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        button.setTitle("START", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(startButtonAction), for: .touchUpInside)
        return button
    }()
    
    
    lazy var stopButton: UIButton = {
        let button = UIButton()
        button.setTitle("STOP", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(stopButtonAction), for: .touchUpInside)
        return button
    }()
    
    
    
    //MARK: - Arrow and center circle
    lazy var arrow: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: 13, height: 91))
        image.image = UIImage(named: "Vector")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    lazy var centerCircle: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: 167, height: 167))
        image.image = UIImage(named: "Ellipse 1")
        image.contentMode = .scaleAspectFit
        image.contentMode = .center
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
    
    
    lazy var logoImage: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: 57, height: 49))
        image.image = UIImage(named: "_icons")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    
    //MARK: - Background
    lazy var backgroundImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "[CITYPNG 1 (Traced)")
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
        
    }()
    
    
    lazy var infoImageView: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 0, y: 0, width: 355, height: 213))
        image.image = UIImage(named: "Rectangle 211")
        image.contentMode = .scaleAspectFit
        image.contentMode = .center
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    
    
    //MARK: - Numbers
    lazy var numberNullLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var numberOneLabel: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var numberFiveLabel: UILabel = {
        let label = UILabel()
        label.text = "5"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var numberTenLabel: UILabel = {
        let label = UILabel()
        label.text = "10"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var numberTwentyLabel: UILabel = {
        let label = UILabel()
        label.text = "20"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var numberThirtyLabel: UILabel = {
        let label = UILabel()
        label.text = "30"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var numberFiftyLabel: UILabel = {
        let label = UILabel()
        label.text = "50"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var numberSeventyFiveLabel: UILabel = {
        let label = UILabel()
        label.text = "75"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    lazy var numberOneHundredLabel: UILabel = {
        let label = UILabel()
        label.text = "100"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 10)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    
    //MARK: - View did load
    override func viewDidLoad() {
        super.viewDidLoad()
        adaptiveSize()
        setup()
    }
    
    
    override func viewDidLayoutSubviews() {
        addArc(arc: archShapeLayer)
        addArc(arc: overArchShapeLayer)
    }
    
    
    //MARK: - Button actions
    @objc func startButtonAction() {
        print("Start button")
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.toValue = 0.3
        animation.duration = 2
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
        animation.fillMode = CAMediaTimingFillMode.both
        animation.isRemovedOnCompletion = false
        animation.delegate = self
        
        overArchShapeLayer.add(animation, forKey: nil)
        startButton.isHidden = true
        stopButton.isHidden = false
    }
    
    @objc func stopButtonAction() {
        print("Stop button")
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.toValue = 0
        animation.duration = 0.5
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)
        animation.fillMode = CAMediaTimingFillMode.both
        animation.isRemovedOnCompletion = false
        animation.delegate = self
        
        overArchShapeLayer.add(animation, forKey: nil)
        startButton.isHidden = false
        stopButton.isHidden = true
    }
    
    
    
    func addArc(arc: CAShapeLayer) {
        arc.frame = view.bounds
        let sPath = UIBezierPath(arcCenter: CGPoint(x: view.frame.width / 2, y: view.frame.height / 2.5 ), radius: 165, startAngle: 2.5, endAngle: 6.9, clockwise: true)
        arc.path = sPath.cgPath
    }
    
}
