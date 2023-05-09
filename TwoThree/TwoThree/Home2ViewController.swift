//
//  HomeViewController.swift
//  TwoThree
//
//  Created by Marcio Abrantes on 13/03/23.
//

import UIKit

class Home2ViewController: UIViewController {
    
    private lazy var stackView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    /* component */
    private lazy var successImageView: UIImageView = {
        let imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "deposit-by-check")
        return imageView
    }()

    private lazy var titleComponentLabel: UILabel = {
        let uiLabel = UILabel(frame: .zero)
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        uiLabel.contentMode = .scaleToFill
        uiLabel.numberOfLines = 0
        uiLabel.text = "Option"
        uiLabel.font = UIFont.boldSystemFont(ofSize: 20)
        uiLabel.textColor = .lightGray
        return uiLabel
    }()
    /* component */
    
    private lazy var contentView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
     
    override func viewDidLoad() {
        view.addSubview(contentView)
        view.backgroundColor = .white
        stackView.addSubview(successImageView)
        stackView.addSubview(titleComponentLabel)
        contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        contentView.addSubview(stackView)
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 30),
            contentView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
            contentView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -200),
            
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            stackView.heightAnchor.constraint(equalToConstant: 30),
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
            
            successImageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor),
            successImageView.widthAnchor.constraint(equalToConstant: 22),
            successImageView.heightAnchor.constraint(equalToConstant: 22),
            successImageView.centerYAnchor.constraint(equalTo: titleComponentLabel.centerYAnchor),
            
            titleComponentLabel.leadingAnchor.constraint(equalTo: successImageView.trailingAnchor, constant: 10),
            titleComponentLabel.widthAnchor.constraint(equalTo: stackView.widthAnchor, multiplier: -200),
            titleComponentLabel.heightAnchor.constraint(equalTo: stackView.heightAnchor),
            titleComponentLabel.centerYAnchor.constraint(equalTo: stackView.centerYAnchor)
        ])
    }
}
