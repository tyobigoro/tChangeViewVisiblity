//
//  XIBView.swift
//  tChangeViewVisiblity
//
//  Created by tyobigoro on 2019/09/03.
//  Copyright © 2019 tyobigoro. All rights reserved.
//

import UIKit

class XIBView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        commonInit()
    }
    
    private func commonInit() {
        let nib  = UINib(nibName: "XIBView", bundle: Bundle(for: XIBView.self))
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        view.frame = self.bounds
        self.addSubview(view)
    }

}
