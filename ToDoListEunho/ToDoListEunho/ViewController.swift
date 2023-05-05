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
    var count: Int = 0
    

    private lazy var toDoListTableView = UITableView().then {
        $0.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
    }
     
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        toDoListTableView.reloadData()
        
        view.backgroundColor = .white
        
        toDoListTableView.delegate = self
        toDoListTableView.dataSource = self
        
        view.addSubview(toDoListTableView)
        
        toDoListTableView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        nav()
        
    }
    
    func nav() {
        
        let rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButton))
        navigationItem.rightBarButtonItem = rightBarButtonItem
        
        let leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .edit, target: self, action: #selector(editButtonTap))
        navigationItem.leftBarButtonItem = leftBarButtonItem
        
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donButtonTap))
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
        }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete
        {
            data.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: nil)
        cell.textLabel?.text = "What to do"
        cell.detailTextLabel?.text =  data[indexPath.row]
        cell.selectionStyle = .none

        return cell
    }
    
    @objc func addButton(_ sender: UIBarButtonItem) {
        let alert = UIAlertController(title: "To Do", message: "", preferredStyle: .alert)
        let cancle = UIAlertAction(title: "취소", style: .default, handler: nil)
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: {
            action in
            let newContents: String = alert.textFields?[0].text ?? "에러 입니다"
            if let toDoList = UserDefaults.standard.stringArray(forKey: "toDoList") {
                var updatedToDoList = toDoList
                updatedToDoList.append(newContents)
                UserDefaults.standard.set(updatedToDoList, forKey: "toDoList")
                self.data = updatedToDoList
                self.count = updatedToDoList.count
            } else {
                UserDefaults.standard.set([newContents], forKey: "toDoList")
                self.data = [newContents]
                self.count = 1
            }
            self.toDoListTableView.reloadData()
        })

        alert.addTextField { (inputNewContents) in
            inputNewContents.placeholder = "새로운 할 일 입력"
            inputNewContents.textAlignment = .center
        }
        alert.addAction(cancle)
        alert.addAction(ok)
        present(alert,animated: true,completion: nil)
    }
    
    
    @objc func donButtonTap() {
        //self.navigationItem.leftBarButtonItem = doneButton
        toDoListTableView.setEditing(false, animated: true)
    }
    
    @objc func editButtonTap(_ sender: Any) {
        //self.navigationItem.leftBarButtonItem = editButton
        toDoListTableView.setEditing(true, animated: true)
        print("edit")
    }
}

