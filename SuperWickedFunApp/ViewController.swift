//
//  ViewController.swift
//  SuperWickedFunApp
//
//  Created by James Larcombe on 2015-09-24.
//  Copyright © 2015 WidgetCo. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func tweetSelected(sender: UIButton) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter) {
            let twitterComposer = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            twitterComposer.setInitialText("Oh hi Guys! I am Widget, please love me!")
            twitterComposer.addImage(UIImage(named: "Widget"))
            presentViewController(twitterComposer, animated: true, completion: { () -> Void in
            })
        } else {
            let alert = UIAlertController(title: "Check your account Settings", message: "We were not able to detect twitter accounts", preferredStyle: UIAlertControllerStyle.Alert)
            let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: { (action) -> Void in
                
            })
            alert.addAction(action)
            presentViewController(alert, animated: true, completion: { () -> Void in
                
            })
        }
    }
    
    @IBAction func shareOnFacebook(sender: AnyObject) {
        
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeFacebook) {
            let facebookComposer = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
            facebookComposer.setInitialText("Oh hi Guys! I am Widget, please love me!")
            facebookComposer.addImage(UIImage(named: "Widget"))
            presentViewController(facebookComposer, animated: true, completion: { () -> Void in
            })
        } else {
            let alert = UIAlertController(title: "Check your account Settings", message: "We were not able to detect facebook accounts", preferredStyle: UIAlertControllerStyle.Alert)
            let action = UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: { (action) -> Void in
                
            })
            alert.addAction(action)
            presentViewController(alert, animated: true, completion: { () -> Void in
                
            })
        }
    }

}

