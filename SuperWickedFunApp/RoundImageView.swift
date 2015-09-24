//
//  RoundImageView.swift
//  TackApp
//
//  Created by James Larcombe on 2015-08-23.
//  Copyright (c) 2015 catapult. All rights reserved.
//

import UIKit

class RoundImageView: UIImageView {
    override var frame : CGRect {
        didSet {
            layer.cornerRadius = (frame.size.width + frame.size.height) / 4
        }
    }
    override func awakeFromNib() {
        layer.borderWidth = 1.0
        layer.borderColor = UIColor.lightTextColor().CGColor
        clipsToBounds = true
    }
}
