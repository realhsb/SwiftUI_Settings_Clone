//
//  UIColor+Extension.swift
//  Settings
//
//  Created by Subeen on 12/29/24.
//

import UIKit

extension UIColor {

    static func colorWith(name:String) -> UIColor? {
        let selector = Selector("\(name)Color")
        if UIColor.self.responds(to: selector) {
            let color = UIColor.self.perform(selector).takeUnretainedValue()
            return (color as? UIColor)
        } else {
            return nil
        }
    }
}


