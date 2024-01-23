//
//  ViewController.swift
//  lesson4-ios23
//
//  Created by Gulzat Zheenbek kyzy on 22/1/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    private let simpleTableView = UITableView()
    
    private let simpleList: [Simple] = [Simple(image: "star", text: "star"),
                                    Simple(image: "car", text: "car"),
                                    Simple(image: "person", text: "person"),
                                    Simple(image: "car", text: "car"),
                                    Simple(image: "car", text: "car"),
                                    Simple(image: "car", text: "car"),
                                    Simple(image: "car", text: "car")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(simpleTableView)
        simpleTableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "cell")
        
        simpleTableView.dataSource = self
        simpleTableView.delegate = self
        
        simpleTableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            simpleTableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            simpleTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            simpleTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            simpleTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        simpleList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//        cell.textLabel?.text = "cell: \(indexPath.row)"
//        return cell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        cell.setImageData(simpleList[indexPath.row].image,
                          text: simpleList[indexPath.row].text)
     //   cell.setImageData(image: images[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("indexPath: \(indexPath.row)")
        
        let vc = SecondViewController()

        vc.simpleData = simpleList[indexPath.row]

        navigationController?.pushViewController(vc, animated: true)
        
    }
}

