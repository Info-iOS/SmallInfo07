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

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var data: [String] = []
    var count: Int = 5
    
    private lazy var toDoListTableView = UITableView().then {
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }
     
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        nav()
        
        toDoListTableView.delegate = self
        toDoListTableView.dataSource = self
        
        view.addSubview(toDoListTableView)
        
        toDoListTableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
    
    func nav() {
        let rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButton))
        navigationItem.rightBarButtonItem = rightBarButtonItem
//
        let leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveButton))
        navigationItem.leftBarButtonItem = leftBarButtonItem
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = "to do list 제목"
        cell.detailTextLabel?.text = "to do list 내용"
        cell.selectionStyle = .none

        return cell
    }
    
    @objc func addButton() {
        count += 1
        print(count)
        
    }
    
    @objc func saveButton() {
        print("save")
    }
}



