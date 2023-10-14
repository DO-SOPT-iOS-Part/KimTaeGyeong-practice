//
//  ViewController.swift
//  sopt33-second-seminar
//
//  Created by 티모시 킴 on 10/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.setLayout()
    }
    
    private func setLayout() {
        [바둑알1, 바둑알2, 방어막].forEach { [weak self] view in
            guard let self else {return}
            view.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(view)
        }
        
        NSLayoutConstraint.activate([
            바둑알1.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 40),
            바둑알1.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 40),
            바둑알1.widthAnchor.constraint(equalToConstant: 20),
            바둑알1.heightAnchor.constraint(equalToConstant: 20)
        ])
        NSLayoutConstraint.activate([
            바둑알2.topAnchor.constraint(equalTo: self.바둑알1.bottomAnchor, constant: 40),
            바둑알2.leadingAnchor.constraint(equalTo: self.바둑알1.trailingAnchor, constant: 40),
            바둑알2.widthAnchor.constraint(equalToConstant: 20),
            바둑알2.heightAnchor.constraint(equalToConstant: 20)
        ])
        NSLayoutConstraint.activate([
            방어막.topAnchor.constraint(equalTo: self.바둑알2.bottomAnchor, constant: 20),
            방어막.leadingAnchor.constraint(equalTo: self.바둑알2.trailingAnchor, constant: 20),
            방어막.widthAnchor.constraint(equalToConstant: 60),
            방어막.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    let 바둑알1: UIView = {
        let view = UIView(frame: .init(origin: .zero, size: .init(width: 6, height: 6)));
        
        view.backgroundColor = .black
        view.layer.cornerRadius = 3
        view.clipsToBounds = true
        return view
    }()
    
    let 바둑알2: UIView = {
        let view = UIView(frame: .init(origin: .zero, size: .init(width: 6, height: 6)));
        
        view.backgroundColor = .black
        view.layer.cornerRadius = 3
        view.clipsToBounds = true
        return view
    }()
    
    var 방어막: UIView = {
        let view = UIView();
        view.backgroundColor = .blue
        return view
    }()
    
}

