
//
//  UITextView_Extension.swift
//  EZY3DBIZ
//
//  Created by chdo on 2017/2/14.
//  Copyright © 2017年 yw. All rights reserved.
//

import UIKit

extension UITextView {
    
    private struct AssociatedKeys {
        static var managerKey = "placeHolderKey"
    }
    
    func setUpPlaceHoldr(_ title: String, font: UIFont? = nil, textColor: UIColor? = nil) {
        
        let placeHolde = UILabel(frame: CGRect(x: 5, y: 5, width: 100, height: 20))
        
        if font == nil {
            placeHolde.font = UIFont.systemFont(ofSize: 12)
        } else {
            placeHolde.font = font
        }
        
        if textColor == nil {
            placeHolde.textColor = UIColor.lightGray
        } else {
            placeHolde.textColor = textColor
        }
        
        placeHolde.text = title
        placeHolde.isHidden = !(self.text == "" || self.text == nil)
        self.addSubview(placeHolde)
        
        objc_setAssociatedObject(self, &AssociatedKeys.managerKey, placeHolde, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        NotificationCenter.default.addObserver(self, selector: #selector(textDidChange), name: .UITextViewTextDidChange, object: nil)
    }
    
    
    func textDidChange(){
        
        if let holder = objc_getAssociatedObject(self, &AssociatedKeys.managerKey) as? UILabel {
            if self.text != nil {
                if self.text == "" {
                    holder.isHidden = false
                } else{
                    holder.isHidden = true
                }
            } else {
                holder.isHidden = false
            }
        }
    }
}
