//
//  ViewController.swift
//  tChangeViewVisiblity
//
//  Created by tyobigoro on 2019/09/03.
//  Copyright © 2019 tyobigoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var genrePickerView: XIBView!
    
    @IBOutlet weak var genrePickerViewY: NSLayoutConstraint!
    
    var isVisible = false {
        didSet {
            if oldValue != isVisible {
                changeVisiblity()
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnDidTap(_ sender: UIButton) {
        
        isVisible.toggle()
        
    }
    
    func changeVisiblity() {
        
        if isVisible {
            self.genrePickerViewY.constant = 0
        } else {
            self.genrePickerViewY.constant = 250
        }
        
        UIView.animate(withDuration: 0.5) { self.view.layoutIfNeeded() }
        
        print("self.view.frame:", self.view.frame)
        print("genrePickerVie.frame:", genrePickerView.frame)
    }
    
}

