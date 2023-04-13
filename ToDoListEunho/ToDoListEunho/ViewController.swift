//
//  ViewController.swift
//  ToDoListEunho
//
//  Created by 이은호 on 2023/04/11.
//
// 가보자 은호야

import UIKit
import Then
import SnapKit

class ViewController: UIViewController {
    
    var plusButton = UIButton().then {
        $0.setTitle("+", for: .normal)
        $0.setTitleColor(UIColor.blue ,for: .normal)
        $0.backgroundColor = .white
        $0.addTarget(self, action: #selector(plusButtonDidTap), for: .touchUpInside)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 30)
    }
    
    var doneButton = UIButton().then {
        $0.setTitle("Done", for: .normal)
        $0.setTitleColor(UIColor.blue, for: .normal)
        $0.backgroundColor = .white
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 20)
    }
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(plusButton)
        view.addSubview(doneButton)
        
        plusButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(20.0)
            $0.right.equalToSuperview().offset(0.0)
            $0.width.height.equalTo(100)
            
        }
        
        doneButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(20.0)
            $0.left.equalToSuperview().offset(0.0)
            $0.width.height.equalTo(100)
        }
 
 
        
        
        
    }

    @objc func plusButtonDidTap() {
        print("+")
    }

}


