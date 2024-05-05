//
//  ScissorsRockPaperViewController.swift
//  ConneCo
//
//  Created by jaegu park on 4/29/24.
//

import UIKit

class ScissorsRockPaperViewController: UIViewController {
    
    let gameimageNameData = ["scissors", "rock", "paper"]
    
    lazy var playStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var computerGameImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "rock"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var userGameImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "scissors"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var inputStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var scissorsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("가위", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 20
        return button
    }()
    
    lazy var rockButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("바위", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 20
        return button
    }()
    
    lazy var paperButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("보", for: .normal)
        button.backgroundColor = .purple
        button.layer.cornerRadius = 20
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        
        view.addSubview(playStackView)
        playStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        playStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        playStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        playStackView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        playStackView.addArrangedSubview(computerGameImageView)
        playStackView.addArrangedSubview(userGameImageView)
        
        view.addSubview(inputStackView)
        inputStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        inputStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        inputStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -200).isActive = true
        inputStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        inputStackView.addArrangedSubview(scissorsButton)
        inputStackView.addArrangedSubview(rockButton)
        inputStackView.addArrangedSubview(paperButton)
        
        scissorsButton.addTarget(self, action: #selector(didTapChangeGameImageButton), for: .touchUpInside)
        rockButton.addTarget(self, action: #selector(didTapChangeGameImageButton2), for: .touchUpInside)
        paperButton.addTarget(self, action: #selector(didTapChangeGameImageButton3), for: .touchUpInside)
    }
    
    @objc func didTapChangeGameImageButton() {
        userGameImageView.image = UIImage(named: "scissors")
        let randomInput = gameimageNameData.randomElement()!
        computerGameImageView.image = UIImage(named: randomInput)
    }
    
    @objc func didTapChangeGameImageButton2() {
        userGameImageView.image = UIImage(named: "rock")
        let randomInput = gameimageNameData.randomElement()!
        computerGameImageView.image = UIImage(named: randomInput)
    }
    
    @objc func didTapChangeGameImageButton3() {
        userGameImageView.image = UIImage(named: "paper")
        let randomInput = gameimageNameData.randomElement()!
        computerGameImageView.image = UIImage(named: randomInput)
    }
}
