//
//  ViewController+KNLayoutHelper.swift
//  KNLayout
//
//  Created by Kevin Chang on 2017/6/29.
//  Copyright © 2017年 oti. All rights reserved.
//

import Foundation
import KNLayout


extension ViewController:KNLayoutDelegate
{
    func constraintForPortraitWithPhone(){

        view.kn_layoutHelper.addConstraints{

            $0 += titleLabel.centerYEqual(view,-50.kn.pt)
            $0 += titleLabel.leadingEqual(view)
            $0 += titleLabel.trailingEqual(view)

            $0 += btn.topEqualBottomOf(titleLabel)
            $0 += btn.centerXEqual(view)
            $0 += btn.widthEqual(120.kn.pt)
            $0 += btn.heightEqual(40.kn.pt)

        }
    }

    func constraintForLandscapeWithPhone() {

        view.kn_layoutHelper.addConstraints{

            $0 += titleLabel.topEqual(view)
            $0 += titleLabel.heightEqual(50.kn.pt)
            $0 += titleLabel.leadingEqual(view)
            $0 += titleLabel.trailingEqual(view)

            $0 += btn.topEqualBottomOf(titleLabel)
            $0 += btn.leadingEqual(view)
            $0 += btn.trailingEqual(view)
            $0 += btn.bottomEqual(view)
            
        }
    }


//    func constraintForPortraitWithPad() {
//
//    }
//
//
//    func constraintForLandscapeWithPad() {
//
//    }
}
