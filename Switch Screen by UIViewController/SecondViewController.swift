//
//  SecondViewController.swift
//  Switch Screen by UIViewController
//
//  Created by masato on 7/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Screen view Color
        self.view.backgroundColor = UIColor.blue

        /*
        Button Design
        */

        let backButton: UIButton = UIButton(frame: CGRect(x: 0,y: 0, width: 120, height: 50))
        backButton.backgroundColor = UIColor.gray
        backButton.layer.masksToBounds = true
        backButton.setTitle("Back", for: .normal)
        backButton.layer.cornerRadius = 20.0
        backButton.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-50)
        backButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: UIControl.Event.touchUpInside)
        self.view.addSubview(backButton);
    }

    /*
     Button Action
     */
    @objc func onClickMyButton(sender: UIButton){

        // declare ViewControler for Screen Transition
        let myViewController: UIViewController = ViewController()

        // set Animation for Screen Transition
        // You can chage ".coverVertical", ".flipHorizontal", or ".crossDissolve" as UIModalTransitionStyle property
        myViewController.modalTransitionStyle = UIModalTransitionStyle.flipHorizontal

        // set Screen Transition
        self.present(myViewController, animated: true, completion: nil)
    }

}
