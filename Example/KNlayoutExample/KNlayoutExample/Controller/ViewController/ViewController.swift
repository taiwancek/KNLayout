//
//  ViewController.swift
//  KNLayout
//
//  Created by Kevin Chang on 2017/6/29.
//  Copyright © 2017年 oti. All rights reserved.
//

import UIKit
import KNLayout


class ViewController: KNViewController
{
    let titleLabel = UILabel()
    let btn = UIButton()

    override func loadView()
    {
        super.loadView()

        view.kn_addSubview(titleLabel){
            $0.text = "Hello KNLayout"
            $0.textAlignment = .center
            $0.textColor = UIColor.blue
            $0.font = UIFont.boldSystemFont(ofSize: 28.kn.pt)
            $0.backgroundColor = UIColor.brown
        }

        view.kn_addSubview(btn){
            $0.setTitle("Test Click", for: .normal)
            $0.setTitleColor(UIColor.black, for: .normal)
            $0.backgroundColor = UIColor.gray
        }
    }


    override func viewDidLoad()
    {
        super.viewDidLoad()

        self.view.kn_layoutHelper.delegate = self
//        self.view.kn_layoutHelper.updateConstraint()
    }

}
