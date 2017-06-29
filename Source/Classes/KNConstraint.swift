//
//  KNConstrain.swift
//  KNLayout
//
//  @link Reference https://github.com/puffinsupply/Restraint
//
//  Created by cek on 2017/6/29.
//  Copyright © 2017年 oti. All rights reserved.
//
import UIKit


@objc open class KNRestraint : NSObject {
    
    // MARK: Initializers
    
    public init(
        _ leftItem:       AnyObject,
        _ leftAttribute:  NSLayoutAttribute,
        _ relation:       NSLayoutRelation,
        _ rightItem:      AnyObject,
        _ rightAttribute: NSLayoutAttribute,
        _ multiplier:     CGFloat,
        _ constant:       CGFloat
        ) {
        self.leftItem       = leftItem
        self.leftAttribute  = leftAttribute
        self.relation       = relation
        self.rightItem      = rightItem
        self.rightAttribute = rightAttribute
        self.multiplier     = multiplier
        self.constant       = constant
    }
    
    public init(
        _ leftItem:       AnyObject,
        _ leftAttribute:  NSLayoutAttribute,
        _ relation:       NSLayoutRelation,
        _ rightItem:      AnyObject,
        _ rightAttribute: NSLayoutAttribute
        ) {
        self.leftItem       = leftItem
        self.leftAttribute  = leftAttribute
        self.relation       = relation
        self.rightItem      = rightItem
        self.rightAttribute = rightAttribute
        self.multiplier     = 1
        self.constant       = 0
    }
    
    public init(
        _ leftItem:       AnyObject,
        _ leftAttribute:  NSLayoutAttribute,
        _ relation:       NSLayoutRelation,
        _ constant:       CGFloat
        ) {
        self.leftItem       = leftItem
        self.leftAttribute  = leftAttribute
        self.relation       = relation
        self.rightItem      = nil
        self.rightAttribute = .notAnAttribute
        self.multiplier     = 1
        self.constant       = constant
    }
    
    // MARK: Public
    
    open func constraint() -> NSLayoutConstraint {
        return NSLayoutConstraint(
            item:       leftItem,
            attribute:  leftAttribute,
            relatedBy:  relation,
            toItem:     rightItem,
            attribute:  rightAttribute,
            multiplier: multiplier,
            constant:   constant
        )
    }
    
    open func add(toView: UIView) -> NSLayoutConstraint {
        let constraint = self.constraint()
        
        if let leftView = leftItem as? UIView {
            leftView.translatesAutoresizingMaskIntoConstraints = false
        }
        
        toView.addConstraint(constraint)
        
        return constraint
    }
    
    // MARK: Private
    
    fileprivate let leftItem:       AnyObject
    fileprivate let leftAttribute:  NSLayoutAttribute
    fileprivate let relation:       NSLayoutRelation
    fileprivate let rightItem:      AnyObject?
    fileprivate let rightAttribute: NSLayoutAttribute
    fileprivate let multiplier:     CGFloat
    fileprivate let constant:       CGFloat
    
}
