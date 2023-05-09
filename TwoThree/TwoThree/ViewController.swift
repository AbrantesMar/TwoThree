//
//  ViewController.swift
//  TwoThree
//
//  Created by Marcio Abrantes on 02/01/23.
//

import UIKit

class ViewController: UIViewController {

    private lazy var contentView: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var titleLabel: UILabel = {
        let uiLabel = UILabel(frame: .zero)
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        uiLabel.contentMode = .scaleToFill
        uiLabel.numberOfLines = 0
        uiLabel.text = "Formulario de cadastro"
        uiLabel.font = UIFont.boldSystemFont(ofSize: 20)
        uiLabel.textColor = .gray
        return uiLabel
    }()
    
    private lazy var nameLabel: UILabel = {
        let uiLabel = UILabel(frame: .zero)
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        uiLabel.contentMode = .scaleToFill
        uiLabel.numberOfLines = 0
        uiLabel.text = "Nome"
        uiLabel.font = UIFont.systemFont(ofSize: 14)
        uiLabel.textColor = .gray
        return uiLabel
    }()
    
    private lazy var nameTextField: UITextField = {
        let textField = UITextField(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        let paddingView = UIView(frame: CGRectMake(0, 0, 10, textField.frame.height))
        textField.leftView = paddingView
        textField.leftViewMode = UITextField.ViewMode.always
        
        textField.contentMode = .scaleToFill
        textField.backgroundColor = .lightGray
        return textField
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let uiLabel = UILabel(frame: .zero)
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        uiLabel.contentMode = .scaleToFill
        uiLabel.numberOfLines = 0
        uiLabel.text = "Descreva as observações"
        uiLabel.font = UIFont.systemFont(ofSize: 14)
        uiLabel.textColor = .gray
        return uiLabel
    }()
    
    private lazy var descriptionField: UITextView = {
        let textField = UITextView(frame: .zero)
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 8
        textField.layer.masksToBounds = true
        textField.text = "Digite uma mensagem"
        textField.textColor = UIColor.lightGray
        textField.delegate = self
        textField.allowsEditingTextAttributes = true
        textField.textAlignment = NSTextAlignment.left
        textField.contentInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        textField.backgroundColor = .lightGray
        return textField
    }()
    
    private lazy var countLenghtLabel: UILabel = {
        let uiLabel = UILabel(frame: .zero)
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        uiLabel.contentMode = .scaleToFill
        uiLabel.numberOfLines = 0
        uiLabel.text = "0/2.000 caracteres"
        uiLabel.font = UIFont.systemFont(ofSize: 14)
        uiLabel.textColor = .gray
        return uiLabel
    }()
    
    private lazy var countMinLenghtLabel: UILabel = {
        let uiLabel = UILabel(frame: .zero)
        uiLabel.translatesAutoresizingMaskIntoConstraints = false
        uiLabel.contentMode = .scaleToFill
        uiLabel.numberOfLines = 0
        uiLabel.text = "Mínimo: 40 caracteres"
        uiLabel.font = UIFont.systemFont(ofSize: 14)
        uiLabel.textColor = .gray
        return uiLabel
    }()
    
    private lazy var continueButton: UIButton = {
        let button = UIButton(frame: .zero)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .lightGray
        button.setTitle("Continuar", for: .normal)
        button.addTarget(self, action: #selector(didTapContinueButton), for: .touchUpInside)
        return button
    }()
    
    @objc private func didTapContinueButton() {
        showMyViewControllerInACustomizedSheet()
    }
    
    private lazy var containerStackView: UIStackView = {
        let stackView = UIStackView(frame: .zero)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 8
        stackView.distribution = .fill
        return stackView
    }()
    
    private lazy var uiViewContainer: UIView = {
        let view = UIView(frame: .zero)
        view.backgroundColor = .orange
        view.contentMode = .scaleToFill
        return view
    }()
    
    var countLenghtTextView: String = ""
    
    func showMyViewControllerInACustomizedSheet() {
        let viewControllerToPresent = HomeViewController()
        if let sheet = viewControllerToPresent.sheetPresentationController {
            sheet.detents = [.medium(), .large()]
            sheet.largestUndimmedDetentIdentifier = .medium
            sheet.prefersScrollingExpandsWhenScrolledToEdge = false
            sheet.prefersEdgeAttachedInCompactHeight = true
            sheet.widthFollowsPreferredContentSizeWhenEdgeAttached = true
        }
        present(viewControllerToPresent, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        let textLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        
        textLabel.center = CGPoint(x: 160, y: 285)
        textLabel.textColor = .green
        textLabel.font = UIFont.systemFont(ofSize: 17)
        view.addSubview(textLabel)
        view.addSubview(contentView)
        view.addSubview(uiViewContainer)
        view.addSubview(containerStackView)
        contentView.addSubview(titleLabel)
        contentView.addSubview(nameLabel)
        contentView.addSubview(nameTextField)
        contentView.addSubview(descriptionLabel)
        contentView.addSubview(descriptionField)
        contentView.addSubview(countLenghtLabel)
        contentView.addSubview(countMinLenghtLabel)
        containerStackView.addSubview(continueButton)
        
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 30),
            contentView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
            contentView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -200),
            
            uiViewContainer.topAnchor.constraint(equalTo: contentView.topAnchor),
            uiViewContainer.widthAnchor.constraint(equalTo: view.widthAnchor),
            uiViewContainer.heightAnchor.constraint(equalToConstant: 100),
            
            containerStackView.topAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 20),
            containerStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -48),
            containerStackView.widthAnchor.constraint(equalToConstant: 50),
            
            continueButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40),
            continueButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            continueButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 20),
            continueButton.heightAnchor.constraint(equalToConstant: 50),
            
            titleLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            titleLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            nameLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            
            nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 16),
            nameTextField.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            nameTextField.heightAnchor.constraint(equalToConstant: 50),
            
            descriptionLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 16),
            descriptionLabel.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            
            descriptionField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 16),
            descriptionField.heightAnchor.constraint(equalToConstant: 200),
            descriptionField.widthAnchor.constraint(equalTo: contentView.widthAnchor),
            
            countLenghtLabel.topAnchor.constraint(equalTo: descriptionField.bottomAnchor, constant: 10),
            countLenghtLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            countMinLenghtLabel.topAnchor.constraint(equalTo: descriptionField.bottomAnchor, constant: 10),
            countMinLenghtLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
    }
}

extension ViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        guard let rangeOfTextToReplace = Range(range, in: textView.text) else {
            return false
        }
        let substringToReplace = textView.text[rangeOfTextToReplace]
        let count = textView.text.count - substringToReplace.count + text.count
        
        if count > 2000 {
            return false
        }
        
        countLenghtTextView = "\(count)"
        countLenghtLabel.text = "\(countLenghtTextView)/2.000 caracteres"
        textViewDidBeginEditing(textView)
        return count <= 2000
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {

        if textView.textColor == UIColor.lightGray {
            textView.text = ""
            textView.textColor = UIColor.black
        } else if textView.text.count == 0 {
            textView.text = "Digite uma mensagem"
            textView.textColor = UIColor.lightGray
        }
    }
}

