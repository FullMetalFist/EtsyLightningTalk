//
//  ViewController.swift
//  NewCode
//
//  Created by Michael Vilabrera on 12/15/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // label
    var label: UILabel!
    // dynamic component
    var animator : UIDynamicAnimator!
    var gravity : UIGravityBehavior!
    var collision : UICollisionBehavior!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //inside viewDidLoad
        label = UILabel(frame:CGRect(x:20, y:100, width:150, height:23))
        label.text = "Drop it like its hott"
        label.font = UIFont.boldSystemFontOfSize(14)
        view.addSubview(label)
        
        let square = UIView(frame: CGRectMake(100, 100, 100, 100))
        let rectangle = UIView(frame: CGRectMake(0, 300, 130, 20))
        
        square.backgroundColor = UIColor.blueColor()
        view.addSubview(square)
        
        rectangle.backgroundColor = UIColor.redColor()
        view.addSubview(rectangle)
        
        animator = UIDynamicAnimator(referenceView: view)
        gravity = UIGravityBehavior(items: [square])
        collision = UICollisionBehavior(items: [square, rectangle])
        collision.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(gravity)
        animator.addBehavior(collision)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

