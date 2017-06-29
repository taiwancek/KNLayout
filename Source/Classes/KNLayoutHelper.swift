//
//  KNLayoutHelper.swift
//  KNLayout
//
//  Created by cek on 2017/6/29.
//  Copyright © 2017年 . All rights reserved.
//

import UIKit


@discardableResult
public func += ( left: inout [KNRestraint], right: KNRestraint) -> [KNRestraint]
{
    left.append(right)
    return left
}

@objc open class KNLayoutHelper:NSObject
{
    public weak var rootView:UIView?
    public weak var delegate:KNLayoutDelegate?
    var addEdConstraints = [NSLayoutConstraint]()

    public func addConstraints(block:((inout [KNRestraint])->Void))
    {
        if let view = rootView{
            var constraints = [KNRestraint]()
            block(&constraints)


            for constraint in constraints{
                addEdConstraints.append(constraint.add(toView:view))
            }
        }
    }



    @objc public func updateConstraint()
    {
        guard let view = rootView else{
            return
        }

        view.removeConstraints(addEdConstraints)
        addEdConstraints.removeAll()


        if UIDevice().kn.isPhone
            && UIDevice().kn.isLandscape
            && delegate?.constraintForLandscapeWithPhone != nil //phone landscape
        {
            delegate?.constraintForLandscapeWithPhone?()
        }
        else if UIDevice().kn.isPad
            && UIDevice().kn.isLandscape
            && delegate?.constraintForLandscapeWithPad != nil//pad landscape
        {
            delegate?.constraintForLandscapeWithPad?()
        }
        else if UIDevice().kn.isPad
            && delegate?.constraintForPortraitWithPad != nil //pad portrait
        {
            delegate?.constraintForPortraitWithPad?()
        }
        else //phone portrait(default)
        {
            delegate?.constraintForPortraitWithPhone()
        }
    }
}
