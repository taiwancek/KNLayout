//
//  ExUIView.swift
//  KNLayout
//
//  Created by cek on 2017/6/29.
//  Copyright © 2017年 oti. All rights reserved.
//

import UIKit
import Foundation

public extension UIView
{

    private struct AssociatedKeys {
        static var KNLayoutHelperKey = "KNLayoutHelper"
    }


    var kn_layoutHelper: KNLayoutHelper {

        get {
            if let layout = objc_getAssociatedObject(self, &AssociatedKeys.KNLayoutHelperKey) as? KNLayoutHelper{
                return layout
            }else{
                self.kn_layoutHelper = KNLayoutHelper()
                self.kn_layoutHelper.rootView = (self.superview==nil) ? self : self.superview
                return self.kn_layoutHelper
            }
        }

        set {
            objc_setAssociatedObject(self, &AssociatedKeys.KNLayoutHelperKey, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }



//    public func kn_addSubview<T:UIView>(_ subView:T.Type, setProperties:((T)->Void)?) -> T
//    {
//        let obj = subView.init()
//
//        addSubview(obj)
//        setProperties?(obj)
//
//        return obj
//    }

    public func kn_addSubview<T:UIView>(_ subView:T, setProperties:((T)->Void)?)
    {
        addSubview(subView)
        setProperties?(subView)

    }


    public func leftEqual( _ rightItem:      UIView,
                           _ rightAttribute: NSLayoutAttribute = .left,
                           _ multiplier:     CGFloat = 1,
                           _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .left, .equal, rightItem,rightAttribute,multiplier,constant)
    }

    public func leftEqual( _ rightItem:      UIView,
                           _ rightAttribute: NSLayoutAttribute = .left,
                           _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .left, .equal, rightItem,rightAttribute,1,constant)
    }

    public func leftEqual( _ rightItem:      UIView,
                           _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .left, .equal, rightItem,.left,1,constant)
    }



    public func rightEqual( _ rightItem:  UIView,
                            _ rightAttribute: NSLayoutAttribute = .right,
                            _ multiplier:     CGFloat = 1,
                            _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .right, .equal, rightItem,rightAttribute,multiplier,constant)
    }

    public func rightEqual( _ rightItem:      UIView,
                            _ rightAttribute: NSLayoutAttribute = .right,
                            _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .right, .equal, rightItem,rightAttribute,1,constant)
    }


    public func rightEqual( _ rightItem:      UIView,
                            _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .right, .equal, rightItem,.right,1,constant)
    }


    public func topEqual( _ rightItem:      UIView,
                          _ rightAttribute: NSLayoutAttribute = .top,
                          _ multiplier:     CGFloat = 1,
                          _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .top, .equal, rightItem,rightAttribute,multiplier,constant)
    }

    public func topEqual( _ rightItem:      UIView,
                          _ rightAttribute: NSLayoutAttribute = .top,
                          _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .top, .equal, rightItem,rightAttribute,1,constant)
    }

    public func topEqualBottomOf( _ rightItem:      UIView,
                          _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .top, .equal, rightItem,.bottom,1,constant)
    }

    public func topEqual( _ rightItem:      UIView,
                          _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .top, .equal, rightItem,.top,1,constant)
    }



    public func bottomEqual( _ rightItem:      UIView,
                             _ rightAttribute: NSLayoutAttribute = .bottom,
                             _ multiplier:     CGFloat = 1,
                             _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .bottom, .equal, rightItem,rightAttribute,multiplier,constant)
    }

    public func bottomEqual( _ rightItem:      UIView,
                             _ rightAttribute: NSLayoutAttribute = .bottom,
                             _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .bottom, .equal, rightItem,rightAttribute,1,constant)
    }

    public func bottomEqual( _ rightItem:      UIView,
                             _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .bottom, .equal, rightItem,.bottom,1,constant)
    }

    public func bottomEqualTopOf( _ rightItem:      UIView,
                                  _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .bottom, .equal, rightItem,.top,1,constant)
    }

    public func widthEqual( _ rightItem:  UIView,
                            _ rightAttribute: NSLayoutAttribute = .width,
                            _ multiplier:     CGFloat = 1,
                            _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .width, .equal, rightItem,rightAttribute,multiplier,constant)
    }

    public func widthEqual( _ rightItem:  UIView,
                            _ rightAttribute: NSLayoutAttribute = .width,
                            _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .width, .equal, rightItem,rightAttribute,1,constant)
    }

    public func widthEqual( _ rightItem:  UIView,
                            _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .width, .equal, rightItem,.width,1,constant)
    }


    public func widthEqual(_ constant: CGFloat) -> KNRestraint
    {
        return KNRestraint(self, .width, .equal, constant)
    }

    public func heightEqual( _ rightItem:      UIView,
                             _ rightAttribute: NSLayoutAttribute = .height,
                             _ multiplier:     CGFloat = 1,
                             _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .height, .equal, rightItem,rightAttribute,multiplier,constant)
    }


    public func heightEqual( _ rightItem:      UIView,
                             _ rightAttribute: NSLayoutAttribute = .height,
                             _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .height, .equal, rightItem,rightAttribute,1,constant)
    }

    public func heightEqual( _ rightItem:      UIView,
                             _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .height, .equal, rightItem,.height,1,constant)
    }

    public func heightEqual(_ constant: CGFloat) -> KNRestraint
    {
        return KNRestraint(self, .height, .equal, constant)
    }

    public func leadingEqual( _ rightItem: UIView,
                              _ rightAttribute: NSLayoutAttribute = .leading,
                              _ multiplier:     CGFloat = 1,
                              _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .leading, .equal, rightItem,rightAttribute,multiplier,constant)
    }

    public func leadingEqual( _ rightItem: UIView,
                              _ rightAttribute: NSLayoutAttribute = .leading,
                              _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .leading, .equal, rightItem,rightAttribute,1,constant)
    }

    public func leadingEqual( _ rightItem: UIView,
                              _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .leading, .equal, rightItem,.leading,1,constant)
    }



    public func trailingEqual( _ rightItem:      UIView,
                               _ rightAttribute: NSLayoutAttribute = .trailing,
                               _ multiplier:     CGFloat = 1,
                               _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .trailing, .equal, rightItem,rightAttribute,multiplier,constant)
    }


    public func trailingEqual( _ rightItem:      UIView,
                               _ rightAttribute: NSLayoutAttribute = .trailing,
                               _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .trailing, .equal, rightItem,rightAttribute,1,constant)
    }

    public func trailingEqual( _ rightItem:      UIView,
                               _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .trailing, .equal, rightItem,.trailing,1,constant)
    }


    public func centerXEqual( _ rightItem:      UIView,
                              _ rightAttribute: NSLayoutAttribute = .centerX,
                              _ multiplier:     CGFloat = 1,
                              _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .centerX, .equal, rightItem,rightAttribute,multiplier,constant)
    }

    public func centerXEqual( _ rightItem:      UIView,
                              _ rightAttribute: NSLayoutAttribute = .centerX,
                              _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .centerX, .equal, rightItem,rightAttribute,1,constant)
    }

    public func centerXEqual( _ rightItem:      UIView,
                              _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .centerX, .equal, rightItem,.centerX,1,constant)
    }



    public func centerYEqual( _ rightItem:      UIView,
                              _ rightAttribute: NSLayoutAttribute = .centerY,
                              _ multiplier:     CGFloat = 1,
                              _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .centerY, .equal, rightItem,rightAttribute,multiplier,constant)
    }
    
    public func centerYEqual( _ rightItem:      UIView,
                              _ rightAttribute: NSLayoutAttribute = .centerY,
                              _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .centerY, .equal, rightItem,rightAttribute,1,constant)
    }

    public func centerYEqual( _ rightItem:      UIView,
                              _ constant:       CGFloat = 0) -> KNRestraint
    {
        return KNRestraint(self, .centerY, .equal, rightItem,.centerY,1,constant)
    }

    
}
