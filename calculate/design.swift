//
//  design.swift
//  calculate
//
//  Created by Akerke on 25.07.2023.
//

import Foundation
import SnapKit
import UIKit

let resultView: UIView = {
    let view = UIView()
    view.backgroundColor = .systemIndigo
    view.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMaxYCorner]
    view.clipsToBounds = true
    view.layer.cornerRadius = 50
    return view
}()

let showingLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.textColor = .white
    label.adjustsFontSizeToFitWidth = true
    label.numberOfLines = 1
    label.font = UIFont.systemFont(ofSize: 48)
    return label
}()

let resultLabel: UILabel = {
    let label = UILabel()
    label.text = "0"
    label.numberOfLines = 1
    label.adjustsFontSizeToFitWidth = true
    label.textColor = .white
    label.font = UIFont.systemFont(ofSize: 80)
    return label
}()

let zeroButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemIndigo
    button.setTitle("0", for: .normal)
    button.tag = 0
    button.titleLabel?.font = button.titleLabel?.font.withSize(24)
    button.clipsToBounds = true
    button.layer.cornerRadius = 40
    return button
}()

let firstButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemIndigo
    button.setTitle("1", for: .normal)
    button.tag = 1
    button.titleLabel?.font = button.titleLabel?.font.withSize(24)
    button.clipsToBounds = true
    button.layer.cornerRadius = 40
    return button
}()

let secondButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemIndigo
    button.setTitle("2", for: .normal)
    button.titleLabel?.font = button.titleLabel?.font.withSize(24)
    button.tag = 2
    button.clipsToBounds = true
    button.layer.cornerRadius = 40
    return button
}()


let thirdButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemIndigo
    button.setTitle("3", for: .normal)
    button.titleLabel?.font = button.titleLabel?.font.withSize(24)
    button.tag = 3
    button.clipsToBounds = true
    button.layer.cornerRadius = 40
    return button
}()


let fourthButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemIndigo
    button.setTitle("4", for: .normal)
    button.titleLabel?.font = button.titleLabel?.font.withSize(24)
    button.tag = 4
    button.clipsToBounds = true
    button.layer.cornerRadius = 40
    return button
}()

let fifthButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemIndigo
    button.setTitle("5", for: .normal)
    button.titleLabel?.font = button.titleLabel?.font.withSize(24)
    button.tag = 5
    button.clipsToBounds = true
    button.layer.cornerRadius = 40
    return button
}()

let sixthButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemIndigo
    button.setTitle("6", for: .normal)
    button.titleLabel?.font = button.titleLabel?.font.withSize(24)
    button.tag = 6
    button.clipsToBounds = true
    button.layer.cornerRadius = 40
    return button
}()

let seventhButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemIndigo
    button.setTitle("7", for: .normal)
    button.titleLabel?.font = button.titleLabel?.font.withSize(24)
    button.tag = 7
    button.clipsToBounds = true
    button.layer.cornerRadius = 40
    return button
}()

let eighthButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemIndigo
    button.setTitle("8", for: .normal)
    button.titleLabel?.font = button.titleLabel?.font.withSize(24)
    button.tag = 8
    button.clipsToBounds = true
    button.layer.cornerRadius = 40
    return button
}()

let ninthButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemIndigo
    button.setTitle("9", for: .normal)
    button.titleLabel?.font = button.titleLabel?.font.withSize(24)
    button.tag = 9
    button.clipsToBounds = true
    button.layer.cornerRadius = 40
    return button
}()

let ceButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemMint
    button.setTitle("CE", for: .normal)
    button.titleLabel?.font = button.titleLabel?.font.withSize(24)
    button.clipsToBounds = true
    button.layer.cornerRadius = 40
    return button
}()

let equalsButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemMint
    button.setTitle("=", for: .normal)
    button.titleLabel?.font = button.titleLabel?.font.withSize(36)
    button.clipsToBounds = true
   
    button.layer.cornerRadius = 40
    return button
}()

let pluseButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemMint
    button.setTitle("+", for: .normal)
    button.clipsToBounds = true
    button.tag = Operations.pluse.rawValue
    button.titleLabel?.font = button.titleLabel?.font.withSize(36)
    button.layer.cornerRadius = 40
    return button
}()

let minusButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemMint
    button.setTitle("-", for: .normal)
    button.titleLabel?.font = button.titleLabel?.font.withSize(48)
    button.clipsToBounds = true
    button.tag = Operations.minus.rawValue
    button.layer.cornerRadius = 40
    return button
}()

let divideButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemMint
    button.setTitle("/", for: .normal)
    button.clipsToBounds = true
    button.tag = Operations.divede.rawValue
    button.titleLabel?.font = button.titleLabel?.font.withSize(36)
    button.layer.cornerRadius = 40
    return button
}()

let multiplyButton: UIButton = {
    let button = UIButton()
    button.backgroundColor = .systemMint
    button.setTitle("*", for: .normal)
    button.titleLabel?.font = button.titleLabel?.font.withSize(48)
    button.tag = Operations.multiply.rawValue
    button.clipsToBounds = true
    button.layer.cornerRadius = 40
    return button
}()
