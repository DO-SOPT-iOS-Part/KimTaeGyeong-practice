//
//  ResultVC.swift
//  sopt33-first-seminar
//
//  Created by 티모시 킴 on 10/11/23.
//

import UIKit

class ResultVC: UIViewController {
    
    var email: String = ""
    var password: String = ""
    var delegate: GetDataProtocol?
    var loginDataCompletion: ((([String]) -> Void)?) // 매개변수 타입: String 배열, 리턴타입: void
    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var backButton: UIButton!
    
    func setViewStyle() {
        emailLabel.font = UIFont(name: "SnellRoundhand-Bold", size: 23.0)
        
        backButton.layer.cornerRadius = 5
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindText()
        setViewStyle()
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
        // delegate 이용 - 매뉴얼을 통해 데이터를 보낸다
        delegate?.getLoginData(email: self.email, password: self.password)
        // closure 이용 - 데이터를 전달하는 위치에서 해당 클로저를 호출
        guard let loginDataCompletion else {return} // 옵셔널바인딩을 해준 이유는, 해당 클로저가 옵셔널한 타입이기 때문
        loginDataCompletion([self.email, self.password])
    }
    
    private func bindText() {
        emailLabel.text = "\(email)"
    }

}
