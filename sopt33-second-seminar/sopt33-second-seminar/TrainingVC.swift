//
//  TrainingVC.swift
//  sopt33-second-seminar
//
//  Created by 티모시 킴 on 10/14/23.
//

import UIKit

class TrainingVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.setLayout()
    }
    
    private func setLayout() {
        self.view.addSubview(stackView1)
        self.view.addSubview(stackView2)
        
        [stackView1, stackView2].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview($0)
        }
        
        [yellowView, blackView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            stackView1.addArrangedSubview($0)
        }
        
        [greenView, blueView].forEach {
            $0.translatesAutoresizingMaskIntoConstraints = false
            stackView2.addArrangedSubview($0)
        }
        
        NSLayoutConstraint.activate([
            stackView1.topAnchor.constraint(equalTo: view.topAnchor),
            stackView1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -UIScreen.main.bounds.height/4),
            stackView1.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            stackView1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -UIScreen.main.bounds.width/2)
        ])
        
        NSLayoutConstraint.activate([
            stackView2.topAnchor.constraint(equalTo: view.topAnchor, constant: UIScreen.main.bounds.height/4),
            stackView2.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stackView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: UIScreen.main.bounds.width/2),
            stackView2.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
    
    private var stackView1: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = UIScreen.main.bounds.height/4
        return stackView
    }()
    
    private var stackView2: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = UIScreen.main.bounds.height/4
        return stackView
    }()
    
    private var yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    private var greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    private var blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    private var blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
}
