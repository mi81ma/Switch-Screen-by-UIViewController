//
//  ViewController.swift
//  Switch Screen by UIViewController
//
//  Created by masato on 7/10/2018.
//  Copyright © 2018 masato. All rights reserved.
//
// Swift 4.2
//


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Screen view Color
        self.view.backgroundColor = UIColor.green

        /*
         Button Design
         */
        let nextButton: UIButton = UIButton(frame: CGRect(x: 0,y: 0, width: 120, height: 50))
        nextButton.backgroundColor = UIColor.red
        nextButton.layer.masksToBounds = true
        nextButton.setTitle("Next", for: .normal)
        nextButton.layer.cornerRadius = 20.0
        nextButton.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-50)
        nextButton.addTarget(self, action: #selector(onClickMyButton(sender:)), for: .touchUpInside)

        // add Button on Screen view
        self.view.addSubview(nextButton);
    }

    /*
     Button Action
     */
    @objc internal func onClickMyButton(sender: UIButton){

        // declare ViewControler for Screen Transition
        let mySecondViewController: UIViewController = SecondViewController()

        // set Animation for Screen Transition
        mySecondViewController.modalTransitionStyle = .partialCurl

        // set Screen Transision
        self.present(mySecondViewController, animated: true, completion: nil)
    }


}
