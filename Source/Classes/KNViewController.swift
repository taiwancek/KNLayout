//
//  KNViewController.swift
//  KNLayout
//
//  Created by cek on 2017/6/29.
//  Copyright © 2017年 oti. All rights reserved.
//

import UIKit


//MARK: - Life cycle
@objc open class KNViewController:UIViewController
{
    open override func loadView()
    {
        super.loadView()

        view.backgroundColor = UIColor.white
        self.edgesForExtendedLayout = []

    }

    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?)
    {
        super.traitCollectionDidChange(previousTraitCollection)

        self.view.kn_layoutHelper.updateConstraint()
    }
}



//MARK: - public function
public extension UIViewController
{
    public var isLandscape: Bool
    {
        return UIDevice().kn.isLandscape
    }

    public var isPhone: Bool
    {
        return UIDevice().kn.isPhone
    }
}
