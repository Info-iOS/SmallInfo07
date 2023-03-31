//
//  ViewController.swift
//  calculator
//
//  Created by 이은호 on 2023/03/31.
//

import UIKit
import SnapKit
import Then

class ViewController: UIViewController {
    
    var number1 = 0
    var number2 = 0
    var result = 0
    
    var numberLabel = UILabel().then {
        $0.text =  "0"
        $0.font = .systemFont(ofSize: 40, weight: .black)
    }
    
    var resetButton = UIButton().then {
        $0.setTitle("C", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(resetButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .gray
        $0.layer.cornerRadius = 40.0
    }
    
    var plusMinusButton = UIButton().then {
        $0.setTitle("±", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(plusMinusButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .gray
        $0.layer.cornerRadius = 40.0
    }
    
    var percent = UIButton().then {
        $0.setTitle("%", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(resetButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .gray
        $0.layer.cornerRadius = 40.0
    }
    
    var divide = UIButton().then {
        $0.setTitle("/", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(divideButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .orange
        $0.layer.cornerRadius = 40.0
    }
    
    var seven = UIButton().then {
        $0.setTitle("7", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(sevenButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .darkGray
        $0.layer.cornerRadius = 40.0
    }
    
    var eight = UIButton().then {
        $0.setTitle("8", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(eightButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .darkGray
        $0.layer.cornerRadius = 40.0
    }
    
    var nine = UIButton().then {
        $0.setTitle("9", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(nineButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .darkGray
        $0.layer.cornerRadius = 40.0
    }
    
    var multiply = UIButton().then {
        $0.setTitle("X", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(multiplyButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .orange
        $0.layer.cornerRadius = 40.0
    }
    
    var four = UIButton().then {
        $0.setTitle("4", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(fourButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .darkGray
        $0.layer.cornerRadius = 40.0
    }
    
    var five = UIButton().then {
        $0.setTitle("5", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(fiveButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .darkGray
        $0.layer.cornerRadius = 40.0
    }
    
    var six = UIButton().then {
        $0.setTitle("6", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(sixButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .darkGray
        $0.layer.cornerRadius = 40.0
    }

    var minus = UIButton().then {
        $0.setTitle("-", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(minusButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .orange
        $0.layer.cornerRadius = 40.0
    }
    
    var one = UIButton().then {
        $0.setTitle("1", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(oneButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .darkGray
        $0.layer.cornerRadius = 40.0
    }
    
    var two = UIButton().then {
        $0.setTitle("2", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(twoButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .darkGray
        $0.layer.cornerRadius = 40.0
    }
    
    var three = UIButton().then {
        $0.setTitle("3", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(threeButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .darkGray
        $0.layer.cornerRadius = 40.0
    }
    
    var plus = UIButton().then {
        $0.setTitle("+", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(plusButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .orange
        $0.layer.cornerRadius = 40.0
    }
    
    var zero = UIButton().then {
        $0.setTitle("0", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(zeroButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .darkGray
        $0.layer.cornerRadius = 40.0
    }
    
    var dot = UIButton().then {
        $0.setTitle(".", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(dotButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .darkGray
        $0.layer.cornerRadius = 40.0
    }
    
    var equal = UIButton().then {
        $0.setTitle("=", for: .normal)
        $0.setTitleColor(UIColor.white, for: .normal)
        $0.addTarget(self, action: #selector(equalButtonDidTap), for: .touchUpInside)
        $0.backgroundColor = .orange
        $0.layer.cornerRadius = 40.0
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        layout()
    }
}

    func clear() {
        
    
}
