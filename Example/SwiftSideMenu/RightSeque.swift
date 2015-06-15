//
//  RightSeque.swift
//  SwiftSideMenu
//
//  Created by Paolo Di Prodi on 14/06/2015.
//  Copyright (c) 2015 Evgeny Nazarov. All rights reserved.
//

import Foundation
import UIKit

class RightSegue: UIStoryboardSegue{
    
    override func perform() {
        // Assign the source and destination views to local variables.
        var firstVCView = self.sourceViewController.view as UIView!
        var secondVCView = self.destinationViewController.view as UIView!
        
        // Get the screen width and height.
        let screenWidth = UIScreen.mainScreen().bounds.size.width
        let screenHeight = UIScreen.mainScreen().bounds.size.height
        
        // Specify the initial position of the destination view.
        secondVCView.frame = CGRectMake(0.0, screenHeight, screenWidth, screenHeight)
        
        // Access the app's key window and insert the destination view above the current (source) one.
        //let window = UIApplication.sharedApplication().keyWindow
        //window?.insertSubview(secondVCView, aboveSubview: firstVCView)
        
        let navigat = UINavigationController()
        navigat.pushViewController(self.destinationViewController as! UIViewController, animated: true)
        
        // Animate the transition.
        UIView.animateWithDuration(0.4, animations: { () -> Void in
            firstVCView.frame = CGRectOffset(firstVCView.frame, -screenHeight,0.0)
            secondVCView.frame = CGRectOffset(secondVCView.frame, -screenHeight,0.0)
            
            }) { (Finished) -> Void in
                self.sourceViewController.presentViewController(self.destinationViewController as! UIViewController,
                    animated: false,
                    completion: nil)
        }
        
    }
    
}