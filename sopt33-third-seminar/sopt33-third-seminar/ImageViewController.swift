//
//  ImageViewController.swift
//  sopt33-third-seminar
//
//  Created by 티모시 킴 on 10/31/23.
//

import UIKit

class ImageViewController: UIViewController {
    
    private let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout()).then {
        $0.backgroundColor = .black
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
