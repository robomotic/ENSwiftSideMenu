//
//  ViewController3.swift
//  SwiftSideMenu
//
//  Created by Paolo Di Prodi on 14/06/2015.
//  Copyright (c) 2015 Evgeny Nazarov. All rights reserved.
//

import Foundation
import UIKit

class ViewController3: UIViewController, ENSideMenuDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Move next line to viewWillAppear functon if you store your view controllers
        self.sideMenuController()?.sideMenu?.delegate = self
        // Do any additional setup after loading the view.
        
        var swipeGestureRecognizer1: UISwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: "showViewController")
        swipeGestureRecognizer1.direction = UISwipeGestureRecognizerDirection.Right
        
        self.view.addGestureRecognizer(swipeGestureRecognizer1)
        
    }
    func showViewController() {
        println("preparing  to go back")
        self.performSegueWithIdentifier("idUnwind", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - ENSideMenu Delegate
    func sideMenuWillOpen() {
        println("sideMenuWillOpen")
    }
    
    func sideMenuWillClose() {
        println("sideMenuWillClose")
    }
    
    func sideMenuShouldOpenSideMenu() -> Bool {
        println("sideMenuShouldOpenSideMenu")
        return false
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
