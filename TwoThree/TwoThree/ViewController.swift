//
//  ViewController.swift
//  TwoThree
//
//  Created by Marcio Abrantes on 02/01/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        let textLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        view.addSubview(textLabel)
        textLabel.center = CGPoint(x: 160, y: 285)
        textLabel.textColor = .green
        textLabel.font = UIFont.systemFont(ofSize: 17)
        textLabel.text = "Márcio Abrantes"
    }
}

