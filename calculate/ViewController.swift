//
//  ViewController.swift
//  calculate
//
//  Created by Akerke on 16.07.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    
    
    let resultView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemIndigo
        view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
        view.clipsToBounds = true
        view.layer.cornerRadius = 50
        return view
    }()
    
    let resultLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 90)
        return label
    }()
    
    let firstButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .systemIndigo
        button.setTitle("1", for: .normal)
        button.titleLabel?.textColor = .red
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .largeTitle)
        //        button.titleLabel?.font = button.titleLabel?.font.withSize(48)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 48)
        button.titleLabel?.adjustsFontSizeToFitWidth = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let secondButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemIndigo
        button.setTitle("2", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let thirdButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemIndigo
        button.setTitle("3", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let zeroButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemIndigo
        button.setTitle("0", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let fourthButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemIndigo
        button.setTitle("4", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let fifthButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemIndigo
        button.setTitle("5", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let sixthButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemIndigo
        button.setTitle("6", for: .normal)
        button.clipsToBounds = true
        //        button.titleLabel?.font = UIFont.systemFont(ofSize: 24, weight: .semibold)
        button.layer.cornerRadius = 40
        return button
    }()
    
    let seventhButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemIndigo
        button.setTitle("7", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let eighthButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemIndigo
        button.setTitle("8", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let ninthButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemIndigo
        button.setTitle("9", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let ceButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemMint
        button.setTitle("CE", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let equalsButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemMint
        button.setTitle("=", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let pluseButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemMint
        button.setTitle("+", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let minusButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemMint
        button.setTitle("-", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let divideButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemMint
        button.setTitle("/", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    let multiplyButton: UIButton = {
        let button = UIButton()
        button.configuration = .filled()
        button.tintColor = .systemMint
        button.setTitle("*", for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 40
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScene()
        makeConstraints()
        view.backgroundColor = .systemBackground
        
    }
}

private extension ViewController {
    func setupScene() {
        view.addSubview(resultView)
        resultView.addSubview(resultLabel)
        view.addSubview(zeroButton)
        view.addSubview(firstButton)
        view.addSubview(secondButton)
        view.addSubview(thirdButton)
        view.addSubview(fourthButton)
        view.addSubview(fifthButton)
        view.addSubview(sixthButton)
        view.addSubview(seventhButton)
        view.addSubview(eighthButton)
        view.addSubview(ninthButton)
        view.addSubview(ceButton)
        view.addSubview(equalsButton)
        view.addSubview(pluseButton)
        view.addSubview(minusButton)
        view.addSubview(divideButton)
        view.addSubview(multiplyButton)
    }
    
    func makeConstraints() {
        resultView.snp.makeConstraints{
            $0.height.equalTo(350)
            $0.width.equalTo(400)
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview().offset(-200)
        }
        resultLabel.snp.makeConstraints{
            $0.centerX.equalTo(resultView).offset(150)
            $0.centerY.equalTo(resultView).offset(100)
        }
        firstButton.snp.makeConstraints{
            $0.width.equalTo(80)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(-150)
            $0.centerY.equalToSuperview().offset(250)
        }
        secondButton.snp.makeConstraints{
            $0.width.equalTo(80)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(-60)
            $0.centerY.equalToSuperview().offset(250)
        }
        thirdButton.snp.makeConstraints{
            $0.width.equalTo(80)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(30)
            $0.centerY.equalToSuperview().offset(250)
        }
        zeroButton.snp.makeConstraints{
            $0.width.equalTo(80)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(-60)
            $0.centerY.equalToSuperview().offset(350)
            
        }
        fourthButton.snp.makeConstraints{
            $0.width.equalTo(80)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(-150)
            $0.centerY.equalToSuperview().offset(150)
        }
        fifthButton.snp.makeConstraints{
            $0.width.equalTo(80)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(-60)
            $0.centerY.equalToSuperview().offset(150)
        }
        sixthButton.snp.makeConstraints{
            $0.width.equalTo(80)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(30)
            $0.centerY.equalToSuperview().offset(150)
        }
        seventhButton.snp.makeConstraints{
            $0.width.equalTo(80)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(-150)
            $0.centerY.equalToSuperview().offset(50)
        }
        eighthButton.snp.makeConstraints{
            $0.width.equalTo(80)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(-60)
            $0.centerY.equalToSuperview().offset(50)
        }
        ninthButton.snp.makeConstraints{
            $0.width.equalTo(80)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(30)
            $0.centerY.equalToSuperview().offset(50)
        }
        ceButton.snp.makeConstraints{
            $0.width.equalTo(80)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(-150)
            $0.centerY.equalToSuperview().offset(350)
            
        }
        equalsButton.snp.makeConstraints{
            $0.width.equalTo(80)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(30)
            $0.centerY.equalToSuperview().offset(350)
        }
        pluseButton.snp.makeConstraints{
            $0.width.equalTo(100)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(130)
            $0.centerY.equalToSuperview().offset(350)
        }
        minusButton.snp.makeConstraints{
            $0.width.equalTo(100)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(130)
            $0.centerY.equalToSuperview().offset(250)
        }
        divideButton.snp.makeConstraints{
            $0.width.equalTo(100)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(130)
            $0.centerY.equalToSuperview().offset(150)
        }
        multiplyButton.snp.makeConstraints{
            $0.width.equalTo(100)
            $0.height.equalTo(80)
            $0.centerX.equalToSuperview().offset(130)
            $0.centerY.equalToSuperview().offset(50)
        }
    }
}
