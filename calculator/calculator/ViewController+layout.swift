//
//  ViewController+layout.swift
//  calculator
//
//  Created by 이은호 on 2023/03/31.
//

import UIKit
import SnapKit
import Then

extension ViewController {
    
    func layout() {
        
        [
            resetButton,
            plusMinusButton,
            percent,
            divide,
            seven,
            eight,
            nine,
            multiply,
            four,
            five,
            six,
            minus,
            one,
            two,
            three,
            plus,
            zero,
            dot,
            equal,
            numberLabel
        ].forEach { view.addSubview($0) }
        
        let tapOffset = 600
        
        numberLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(230.0)
            $0.trailing.equalToSuperview().inset(30.0)
        }
        
        resetButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(300.0)
            $0.left.equalToSuperview().offset(0.0)
            $0.width.height.equalTo(80.0)
        }
        
        plusMinusButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(300.0)
            $0.left.equalToSuperview().offset(100.0)
            $0.width.height.equalTo(80.0)
        }
        
        percent.snp.makeConstraints {
            $0.top.equalToSuperview().offset(300.0)
            $0.left.equalToSuperview().offset(200.0)
            $0.width.height.equalTo(80.0)
        }
        
        divide.snp.makeConstraints {
            $0.top.equalToSuperview().offset(300.0)
            $0.left.equalToSuperview().offset(300.0)
            $0.width.height.equalTo(80.0)
        }
        
        seven.snp.makeConstraints {
            $0.top.equalToSuperview().offset(400.0)
            $0.left.equalToSuperview().offset(0.0)
            $0.width.height.equalTo(80.0)
        }
        
        eight.snp.makeConstraints {
            $0.top.equalToSuperview().offset(400.0)
            $0.left.equalToSuperview().offset(100.0)
            $0.width.height.equalTo(80.0)
        }
        
        nine.snp.makeConstraints {
            $0.top.equalToSuperview().offset(400.0)
            $0.left.equalToSuperview().offset(200.0)
            $0.width.height.equalTo(80.0)
        }
        
        multiply.snp.makeConstraints {
            $0.top.equalToSuperview().offset(400.0)
            $0.left.equalToSuperview().offset(300.0)
            $0.width.height.equalTo(80.0)
        }
        
        four.snp.makeConstraints {
            $0.top.equalToSuperview().offset(500.0)
            $0.left.equalToSuperview().offset(0.0)
            $0.width.height.equalTo(80.0)
        }
        
        five.snp.makeConstraints {
            $0.top.equalToSuperview().offset(500.0)
            $0.left.equalToSuperview().offset(100.0)
            $0.width.height.equalTo(80.0)
        }
        
        six.snp.makeConstraints {
            $0.top.equalToSuperview().offset(500.0)
            $0.left.equalToSuperview().offset(200.0)
            $0.width.height.equalTo(80.0)
        }
        
        minus.snp.makeConstraints {
            $0.top.equalToSuperview().offset(500.0)
            $0.left.equalToSuperview().offset(300.0)
            $0.width.height.equalTo(80.0)
        }
        
        one.snp.makeConstraints {
            $0.top.equalToSuperview().offset(tapOffset)
            $0.left.equalToSuperview().offset(0.0)
            $0.width.height.equalTo(80.0)
        }
        
        two.snp.makeConstraints {
            $0.top.equalToSuperview().offset(tapOffset)
            $0.left.equalToSuperview().offset(100.0)
            $0.width.height.equalTo(80.0)
        }
        
        three.snp.makeConstraints {
            $0.top.equalToSuperview().offset(tapOffset)
            $0.left.equalToSuperview().offset(200.0)
            $0.width.height.equalTo(80.0)
        }
        
        plus.snp.makeConstraints {
            $0.top.equalToSuperview().offset(tapOffset)
            $0.left.equalToSuperview().offset(300.0)
            $0.width.height.equalTo(80.0)
        }
        
        zero.snp.makeConstraints {
            $0.top.equalToSuperview().offset(tapOffset + 100)
            $0.left.equalToSuperview().offset(0.0)
            $0.width.equalTo(180.0)
            $0.height.equalTo(80.0)
        }
        
        dot.snp.makeConstraints {
            $0.top.equalToSuperview().offset(tapOffset + 100)
            $0.left.equalToSuperview().offset(200.0)
            $0.width.height.equalTo(80.0)
        }
        
        equal.snp.makeConstraints {
            $0.top.equalToSuperview().offset(tapOffset + 100)
            $0.left.equalToSuperview().offset(300.0)
            $0.width.height.equalTo(80.0)
        }
        
    }
    
    
    @objc func resetButtonDidTap() {
        num1 = 0
        num2 = 0
        operation = ""
        numberLabel.text = "0"
    }
    
    func performOperation() -> Double? {
        switch operation {
        case "+":
            return num1 + num2
        case "-":
            return num1 - num2
        case "X":
            return num1*num2
        case "/":
            if num2 == 0 {
                return nil
            }
            return num1 / num2
        default:
            return nil
            
        }
    }
    
    @objc func plusMinusButtonDidTap() {
        if let text = numberLabel.text, let num = Double(text) {
            numberLabel.text = String(-num)
        }
    }
    
    @objc func percentButtonDidTap() {
        if let text = numberLabel.text, let num = Double(text) {
              numberLabel.text = String(num / 100)
        }
    }
    
    @objc func divideButtonDidTap() {
        if let text = numberLabel.text, let num = Double(text) {
            num1 = num
            operation = "/"
            numberLabel.text = "/"
        }
    }
    
    @objc func sevenButtonDidTap() {
        numberLabel.text?.append("7")
    }
    
    @objc func eightButtonDidTap() {
        numberLabel.text?.append("8")
    }
    
    @objc func nineButtonDidTap() {
        numberLabel.text?.append("9")
    }
    
    @objc func multiplyButtonDidTap() {
        if let text = numberLabel.text, let num = Double(text) {
            num1 = num
            operation = "X"
            numberLabel.text = "X"
        }
    }
    
    @objc func fourButtonDidTap() {
        numberLabel.text?.append("4")
    }
    
    @objc func fiveButtonDidTap() {
        numberLabel.text?.append("5")
    }
    
    @objc func sixButtonDidTap() {
        numberLabel.text?.append("6")
    }
    
    @objc func minusButtonDidTap() {
        if let text = numberLabel.text, let num = Double(text) {
            num1 = num
            operation = "-"
            numberLabel.text = "-"
        }
    }
    
    @objc func oneButtonDidTap() {
        numberLabel.text?.append("1")
    }
    
    @objc func twoButtonDidTap() {
        numberLabel.text?.append("2")
    }
    
    @objc func threeButtonDidTap() {
        numberLabel.text?.append("3")
        
    }

    @objc func plusButtonDidTap() {
        if let text = numberLabel.text, let num = Double(text) {
            num1 = num
            operation = "+"
            numberLabel.text = "+"
        }
//        numberLabel.text = "+"
    }
    
    @objc func zeroButtonDidTap() {
        numberLabel.text?.append("0")
    }

    @objc func dotButtonDidTap() {
        if let text = numberLabel.text, !text.contains(".") {
            numberLabel.text?.append(".")
        }
    }
    
    @objc func equalButtonDidTap() {
        if let text = numberLabel.text, let num = Double(text) {
                   num2 = num
            if let result = performOperation() {
                numberLabel.text = String(result)
            } else {
                numberLabel.text = "Error"
            }
                num1 = 0
                num2 = 0
                operation = ""
        }
        
    }

}
