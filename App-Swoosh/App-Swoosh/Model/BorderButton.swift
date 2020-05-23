//
//  BorderButton.swift
//  App-Swoosh
//
//  Created by Heena on 23/05/20.
//  Copyright © 2020 Heena. All rights reserved.
//

import UIKit
@IBDesignable
class BorderButton: UIButton {
    

//    override class func awakeFromNib() {
//        super.awakeFromNib()
//        print("BorderButton")
//
//    }
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//    }

    required init?(coder: NSCoder) {
         super.init(coder: coder)
        layer.borderWidth = 3
        layer.borderColor = UIColor.white.cgColor
    }
    
//    required init?(coder: NSCoder) {
//        super.init(coder: coder)
//        fatalError("init(coder:) has not been implemented")
//
//    }
    
   //NOTES:-
    // awakeFromNib is only called if teh control is created from a nib/storyboard. If the button is created in code, then initWithFrame: is called, but awakeFromNib is not.
}
