//
//  ViewController.swift
//  Aliens
//
//  Created by Calvin Cheng on 28/2/15.
//  Copyright (c) 2015 Hello HQ Pte Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()
    
    var alienFrames = ["frame1.png", "frame2.png", "frame3.png", "frame4.png", "frame5.png"]
    
    var counter = 0
    
    func result() {
        
        counter++
        
        if counter == 5 {
            counter = 0
        }
        
        alien.image = UIImage(named: alienFrames[counter])
        
    }
    

    @IBOutlet var alien: UIImageView!
    
    
    @IBAction func buttonPressed(sender: AnyObject) {
        
        counter++
        
        if counter == 5 {
            counter = 0
        }
        
        alien.image = UIImage(named: alienFrames[counter])
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        alien.center = CGPointMake(alien.center.x - 400, alien.center.y)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: {
          
            self.alien.center = CGPointMake(self.alien.center.x + 400, self.alien.center.y)
            
        })
    }


}

