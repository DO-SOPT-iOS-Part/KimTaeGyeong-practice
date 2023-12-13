//
//  Extension.swift
//  sopt33-first-seminar
//
//  Created by 티모시 킴 on 10/11/23.
//

import UIKit

extension UIImage {
    
    // 이미지를 원하는 크기로 조정하는 메서드
    func resizeImageTo(size: CGSize) -> UIImage? {
        UIGraphicsBeginImageContextWithOptions(size, false, 0.0)
        self.draw(in: CGRect(origin: CGPoint.zero, size: size))
        guard let resizedImage = UIGraphicsGetImageFromCurrentImageContext() else {
            return nil
        }
        UIGraphicsEndImageContext()
        return resizedImage
    }
    
}

extension UITextField {
    
    // 텍스트필드의 왼쪽에 이미지를 배치하는 메서드
    func addLeftImage(image : UIImage){
        let imageView = UIImageView(frame: CGRect(x: 10, y: 0, width: image.size.width, height: image.size.height))
        let view = UIView(frame: CGRect(x: 0, y: 0, width: image.size.width + 20, height: image.size.height))
        imageView.image = image
        view.addSubview(imageView)
        self.leftView = view
        self.leftViewMode = .always
    }
    
}
