//
//  CustomView.swift
//  ios_customview_xib
//
//  Created by codexpedia on 1/28/19.
//  Copyright © 2019 codexpedia. All rights reserved.
//

import UIKit

class CustomView: UIView {

    @IBOutlet weak var randomNumLabel: UILabel!
    
    @IBAction func generate(_ sender: UIButton) {
        let random = Int(arc4random_uniform(100) + 1) // generate a random number between 0 and 100 inclusive
        randomNumLabel.text = String(random)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        let bundle = Bundle.init(for: type(of: self))
        let nib = UINib(nibName: "CustomView", bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
        view.frame = bounds
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]
        addSubview(view)
    }

}
