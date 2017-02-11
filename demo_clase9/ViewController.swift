//
//  ViewController.swift
//  demo_clase9
//
//  Created by Francisco Ocampo Romero on 10/02/17.
//  Copyright © 2017 devf. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var username: UITextField!

  @IBAction func shakeIt(_ sender: Any) {
    let animation = CAKeyframeAnimation(keyPath: "transform.translation.x")
    animation.duration = 0.5
    animation.values = [-20.0, 20.0, -10.0, 10.0, -5.0, 5.0, 0]
    animation.keyTimes = [0, 0.25, 0.35, 0.45, 0.35, 0.25, 1]
    username.layer.add(animation, forKey: nil)
    
    for case let textField as UITextField in self.view.subviews {
      if textField.text == "" {
        print("vacio")
      }
    }
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}

