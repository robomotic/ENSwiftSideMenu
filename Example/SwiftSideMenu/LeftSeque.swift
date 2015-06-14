//
//  LeftSeque.swift
//  SwiftSideMenu
//
//  Created by Paolo Di Prodi on 14/06/2015.
//  Copyright (c) 2015 Evgeny Nazarov. All rights reserved.
//

import Foundation
import UIKit

class LeftSegue: UIStoryboardSegue{
    
    override func perform() {
        // Assign the source and destination views to local variables.
        var secondVCView = self.sourceViewController.view as UIView!
        var firstVCView = self.destinationViewController.view as UIView!
        
        let screenHeight = UIScreen.mainScreen().bounds.size.height
        
        let window = UIApplication.sharedApplication().keyWindow
        window?.insertSubview(firstVCView, aboveSubview: secondVCView)
        
        // Animate the transition.
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            firstVCView.frame = CGRectOffset(firstVCView.frame, screenHeight,0.0)
            secondVCView.frame = CGRectOffset(secondVCView.frame, screenHeight,0.0)
            
            }) { (Finished) -> Void in
                
                self.sourceViewController.dismissViewControllerAnimated(false, completion: nil)
        }
    }
    
}
