//
//  ViewController.swift
//  CDTextViewPlaceHolderDemo_swift
//
//  Created by chdo on 2017/6/7.
//  Copyright © 2017年 chdo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let textv = UITextView(frame: CGRect(x: 50, y: 50, width: 200, height: 200))
        view.backgroundColor = UIColor.cyan
        view.addSubview(textv)
        
        
        textv.setUpPlaceHoldr("aaa")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

