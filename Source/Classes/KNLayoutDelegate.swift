//
//  KNLayoutDelegate.swift
//  KNLayout
//
//  Created by cek on 2017/6/29.
//  Copyright © 2017年 oti. All rights reserved.
//

import UIKit


@objc public protocol KNLayoutDelegate:class{

    func constraintForPortraitWithPhone() //default
    @objc optional func constraintForLandscapeWithPhone()

    @objc optional func constraintForLandscapeWithPad()
    @objc optional func constraintForPortraitWithPad()

}


