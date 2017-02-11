//
//  CustomFunctions.swift
//  demo_clase9
//
//  Created by Francisco Ocampo Romero on 10/02/17.
//  Copyright © 2017 devf. All rights reserved.
//

import Foundation
import UIKit

extension Double {
  func multiplica(_ value : Int) -> Double {
    return self * Double(value)
  }
}

extension UIViewController {
  func enableBackgroundColor(value : Bool){
    self.view.backgroundColor = value ? UIColor.blue : UIColor.white
  }
}
