//
//  SecondViewController.swift
//  lesson4-ios23
//
//  Created by Gulzat Zheenbek kyzy on 22/1/24.
//

import UIKit

class SecondViewController: UIViewController {

    var simpleData: Simple?
    
    private let secondLabel: UILabel = {
        let label = UILabel(frame: CGRect(x: 100, y: 200, width: 200, height: 50))
        label.textColor = .black
        label.font = .italicSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = true
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        view.addSubview(secondLabel)
        
        secondLabel.text = simpleData?.text ?? ""

    }
}
