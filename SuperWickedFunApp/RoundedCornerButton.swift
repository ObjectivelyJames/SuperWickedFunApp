//
//  RoundedCornerButton.swift
//  TackApp
//
//  Created by James Larcombe on 2015-08-23.
//  Copyright (c) 2015 catapult. All rights reserved.
//

import UIKit


class RoundedCornerButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            clipsToBounds = cornerRadius > 0
        }
    }
    

}
