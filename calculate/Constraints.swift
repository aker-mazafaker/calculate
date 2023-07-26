//
//  Constraints.swift
//  calculate
//
//  Created by Akerke on 26.07.2023.
//


import SnapKit
import UIKit


func makeConstraints() {
    resultView.snp.makeConstraints{
        $0.height.equalTo(350)
        $0.width.equalTo(400)
        $0.centerX.equalToSuperview()
        $0.centerY.equalToSuperview().offset(-180)
    }
    showingLabel.snp.makeConstraints{
        $0.left.right.equalToSuperview().offset(25)
        $0.centerY.equalTo(resultView).offset(-90)
    }
    resultLabel.snp.makeConstraints{
        $0.left.right.equalToSuperview().offset(25)
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
        $0.centerX.equalToSuperview().offset(135)
        $0.centerY.equalToSuperview().offset(350)
    }
    minusButton.snp.makeConstraints{
        $0.width.equalTo(100)
        $0.height.equalTo(80)
        $0.centerX.equalToSuperview().offset(135)
        $0.centerY.equalToSuperview().offset(250)
    }
    divideButton.snp.makeConstraints{
        $0.width.equalTo(100)
        $0.height.equalTo(80)
        $0.centerX.equalToSuperview().offset(135)
        $0.centerY.equalToSuperview().offset(150)
    }
    multiplyButton.snp.makeConstraints{
        $0.width.equalTo(100)
        $0.height.equalTo(80)
        $0.centerX.equalToSuperview().offset(135)
        $0.centerY.equalToSuperview().offset(50)
    }
}
