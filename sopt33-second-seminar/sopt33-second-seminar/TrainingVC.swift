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
        [yellowView, greenView, blackView, blueView].forEach { [weak self] view in
            guard let self else {return}
            view.translatesAutoresizingMaskIntoConstraints = false
            self.view.addSubview(view)
        }
        
        NSLayoutConstraint.activate([
            yellowView.topAnchor.constraint(equalTo: self.view.topAnchor),
            yellowView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            yellowView.widthAnchor.constraint(equalToConstant: self.view.bounds.width/2),
            yellowView.heightAnchor.constraint(equalToConstant: self.view.bounds.height/4)
        ])
        
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: self.yellowView.bottomAnchor),
            greenView.leadingAnchor.constraint(equalTo: self.yellowView.trailingAnchor),
            greenView.widthAnchor.constraint(equalToConstant: self.view.bounds.width/2),
            greenView.heightAnchor.constraint(equalToConstant: self.view.bounds.height/4)
        ])
        
        NSLayoutConstraint.activate([
            blackView.topAnchor.constraint(equalTo: self.greenView.bottomAnchor),
            blackView.leadingAnchor.constraint(equalTo: yellowView.leadingAnchor),
            blackView.widthAnchor.constraint(equalToConstant: self.view.bounds.width/2),
            blackView.heightAnchor.constraint(equalToConstant: self.view.bounds.height/4)
        ])
        
        NSLayoutConstraint.activate([
            blueView.topAnchor.constraint(equalTo: self.blackView.bottomAnchor),
            blueView.leadingAnchor.constraint(equalTo: self.yellowView.trailingAnchor),
            blueView.widthAnchor.constraint(equalToConstant: self.view.bounds.width/2),
            blueView.heightAnchor.constraint(equalToConstant: self.view.bounds.height/4)
        ])
    }
    
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = .yellow
        return view
    }()
    
    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = .green
        return view
    }()
    
    let blackView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        return view
    }()
    
}
