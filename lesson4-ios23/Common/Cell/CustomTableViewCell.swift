//
//  CustomTableViewCell.swift
//  lesson4-ios23
//
//  Created by Gulzat Zheenbek kyzy on 22/1/24.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    private let cellView: UIView = {
        let cell = UIView()
        cell.backgroundColor = .cyan
        cell.layer.cornerRadius = 16
        cell.translatesAutoresizingMaskIntoConstraints = false
        return cell
    }()
    
    private let imageViewSimple: UIImageView = {
       let view = UIImageView()
        view.image = UIImage(systemName: "star")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let simpleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = .italicSystemFont(ofSize: 28)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(cellView)
        
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: contentView.topAnchor),
            cellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            cellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20),
            cellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            cellView.heightAnchor.constraint(equalToConstant: 200)
        ])
        
        cellView.addSubview(imageViewSimple)
        
        NSLayoutConstraint.activate([
            imageViewSimple.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 8),
            imageViewSimple.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 8),
            imageViewSimple.heightAnchor.constraint(equalToConstant: 60),
            imageViewSimple.widthAnchor.constraint(equalToConstant: 60)
        ])
        
        cellView.addSubview(simpleLabel)
        NSLayoutConstraint.activate([
            simpleLabel.topAnchor.constraint(equalTo: imageViewSimple.bottomAnchor, constant: 8),
            simpleLabel.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 8),
            simpleLabel.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -8)
        ])
    }
    
    func setImageData(_ image: String, text: String) {
        
        imageViewSimple.image = UIImage(systemName: image)
        simpleLabel.text = text
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
