//
//  ViewController.swift
//  sopt33-first-seminar
//
//  Created by 티모시 킴 on 10/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    private var idText: String = ""
    private var passwordText: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func idTextFieldDidEditing(_ sender: Any) {
        guard let textField = sender as? UITextField else {return}
        if let idText = textField.text {
            self.idText = idText
        }
    }
    
    @IBAction func passwordTextFieldDidEditing(_ sender: Any) {
        guard let textField = sender as? UITextField else {return}
        if let passwordText = textField.text {
            self.passwordText = passwordText
        }
    }
    
    @IBAction func loginButtonTap(_ sender: Any) {
        print("\(idText)\n\(passwordText)")
        pushToResultVC()
        //        presentToResultVC()
    }
    
    // MARK: 화면전환 방식1 - NavigationController (push)
    func pushToResultVC() {
        guard let resultVC = self.storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ResultVC else {return}
        self.navigationController?.pushViewController(resultVC, animated: true)
    }
    
    // MARK: 화면전환 방식2 - Present (Present)
    func presentToResultVC() {
        guard let resultVC = self.storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ResultVC else {return}
        // Modal은 navigation Controller에서 진행할 수도 있고, ViewController에서 바로 띄울 수도 있다
        //  self.navigationController?.present(resultVC, animated: true)
        self.present(resultVC, animated: true)
    }
    
    // MARK: 화면전환 방식3 - StoryBoard를 이용한 Segue
    // 액션을 주고싶은 버튼을 선택하고, ctrl을 누른 상태로 이동할 스토리보드로 끌어 넣으면 된다.
    // 내비게이션 컨트롤러가 있다면 push 형태로 진행되고, 없다면 present 형태로 진행된다.
    
}

