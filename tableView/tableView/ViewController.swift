//
//  ViewController.swift
//  tableView
//
//  Created by 이은호 on 2023/03/26.
//

import UIKit
import Then
import SnapKit


class ViewController: UIViewController {
    
    private lazy var exTableView = UITableView().then {
        $0.register(CustomTableViewCell.self, forCellReuseIdentifier:
                        "CustomTableViewCell")
        $0.delegate = self
        $0.dataSource = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        layout()
        
    }
    func layout() {
        view.addSubview(exTableView)
        
        exTableView.snp.makeConstraints{
            $0.edges.equalToSuperview()
        }
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowInsection
    }
}

