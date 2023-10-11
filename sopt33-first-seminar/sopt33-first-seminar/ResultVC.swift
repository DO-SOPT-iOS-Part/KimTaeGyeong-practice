//
//  ResultVC.swift
//  sopt33-first-seminar
//
//  Created by 티모시 킴 on 10/11/23.
//

import UIKit

class ResultVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: 화면전환 방식1 - NavigationController (pop)
    //    @IBAction func backButtonTap(_ sender: Any) {
    //        self.navigationController?.popViewController(animated: true)
    //    }
    
    // MARK: 화면전환 방식2 - Present (Dismiss)
    @IBAction func backButtonTap(_ sender: Any) {
        if let navigationController = self.navigationController {
            navigationController.popViewController(animated: true)
        } else {
            self.dismiss(animated: true)
        }
    }
    
}
