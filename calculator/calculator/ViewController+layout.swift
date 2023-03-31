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
        print("0")
    }
    
    @objc func plusMinusButtonDidTap() {
        print("±")
    }
    
    @objc func percentButtonDidTap() {
        print("%")
    }
    
    @objc func divideButtonDidTap() {
        print("/")
    }
    
    @objc func sevenButtonDidTap() {
        print("7")
    }
    
    @objc func eightButtonDidTap() {
        print("8")
    }
    
    @objc func nineButtonDidTap() {
        print("9")
    }
    
    @objc func multiplyButtonDidTap() {
        print("X")
    }
    
    @objc func fourButtonDidTap() {
        print("4")
    }
    
    @objc func fiveButtonDidTap() {
        print("5")
    }
    
    @objc func sixButtonDidTap() {
        print("6")
    }
    
    @objc func minusButtonDidTap() {
        print("-")
//        numberLabel.text = "-"
    }
    
    @objc func oneButtonDidTap() {
        print("1")
    }
    
    @objc func twoButtonDidTap() {
        print("2")
    }
    
    @objc func threeButtonDidTap() {
        print("3")
        
    }

    @objc func plusButtonDidTap() {
        print("+")
//        numberLabel.text = "+"
    }
    
    @objc func zeroButtonDidTap() {
        print("0")
        numberLabel.text = "0"
    }

    @objc func dotButtonDidTap() {
        print(".")
        numberLabel.text = "."
    }
    
    @objc func equalButtonDidTap() {
        print("=")
        numberLabel.text = "="
    }

}
