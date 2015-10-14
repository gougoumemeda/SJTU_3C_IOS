//
//  GestureControlController.swift
//  3c_control
//
//  Created by 钩钩么么哒 on 15/10/10.
//  Copyright © 2015年 钩钩么么哒. All rights reserved.
//

import Foundation
import UIKit

class GestureControlController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        initGesture()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initUI(){
        let left: UILabel = UILabel(frame: CGRectMake(0, 0, self.view.frame.size.width / 2, 50))
        left.center = CGPointMake(self.view.frame.size.width / 4, self.view.frame.size.height - 200)
        left.text = "向左滑动以左转"
        left.textAlignment = NSTextAlignment.Center
        self.view.addSubview(left)
        
        let right: UILabel = UILabel(frame: CGRectMake(0, 0, self.view.frame.size.width / 2, 50))
        right.center = CGPointMake(self.view.frame.size.width / 4 * 3, self.view.frame.size.height - 200)
        right.text = "向右滑动以右转"
        right.textAlignment = NSTextAlignment.Center
        self.view.addSubview(right)
        
        let up: UILabel = UILabel(frame: CGRectMake(0, 0, self.view.frame.size.width / 2, 50))
        up.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height - 300)
        up.text = "向上滑动以前进"
        up.textAlignment = NSTextAlignment.Center
        self.view.addSubview(up)
        
        let down: UILabel = UILabel(frame: CGRectMake(0, 0, self.view.frame.size.width / 2, 50))
        down.center = CGPointMake(self.view.frame.size.width / 2, self.view.frame.size.height - 100)
        down.text = "向下滑动以倒退"
        down.textAlignment = NSTextAlignment.Center
        self.view.addSubview(down)
    }
    
    func initGesture(){
        var swipe: UISwipeGestureRecognizer?
        swipe = UISwipeGestureRecognizer(target: self, action: "leftSwipe:")
        swipe?.direction = UISwipeGestureRecognizerDirection.Left
        self.view.addGestureRecognizer(swipe!)
        
        swipe = UISwipeGestureRecognizer(target: self, action: "rightSwipe:")
        swipe?.direction = UISwipeGestureRecognizerDirection.Right
        self.view.addGestureRecognizer(swipe!)
        
        swipe = UISwipeGestureRecognizer(target: self, action: "upSwipe:")
        swipe?.direction = UISwipeGestureRecognizerDirection.Up
        self.view.addGestureRecognizer(swipe!)
        
        swipe = UISwipeGestureRecognizer(target: self, action: "downSwipe:")
        swipe?.direction = UISwipeGestureRecognizerDirection.Down
        self.view.addGestureRecognizer(swipe!)
    }
    
    func leftSwipe(sender: AnyObject){
        print("left swipe")
    }
    
    func rightSwipe(sender: AnyObject){
        print("right swipe")
    }
    
    func upSwipe(sender: AnyObject){
        print("up swipe")
    }
    
    func downSwipe(sender: AnyObject){
        print("down swipe")
    }
}