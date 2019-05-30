//
//  PopupViewController.swift
//  projectx
//
//  Created by Artem Polosukhin on 29/05/2019.
//  Copyright © 2019 Artem Polosukhin. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    
    @IBOutlet weak var TitleLabel: UILabel!
    
    
    @IBOutlet weak var firstButton: UIButton!
    
    @IBOutlet weak var secondButton: UIButton!
    
    @IBOutlet weak var thirdButton: UIButton!
    
    @IBOutlet weak var forthButton: UIButton!
    
    @IBOutlet weak var closeButton: UIButton!
    
    
    var buttonClicked: Int?
    
    var titleValue: String = "New Title Value"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //TitleLabel.text = titleValue
        
        
    }
    
    
    
    @IBAction func firstButtonClicked(_ sender: UIButton) {
        buttonClicked = 1
        
        NotificationCenter.default.post(name: NSNotification.Name("popupResponse"), object: self)
        
        dismiss(animated: true)
        
    }
    
    
    @IBAction func secondButtonClicked(_ sender: UIButton) {
        buttonClicked = 2
        
        NotificationCenter.default.post(name: NSNotification.Name("popupResponse"), object: self)
        
        dismiss(animated: true)
    }
    
    
    @IBAction func thirdButtonClicked(_ sender: UIButton) {
        buttonClicked = 3
        
        NotificationCenter.default.post(name: NSNotification.Name("popupResponse"), object: self)
        
        dismiss(animated: true)
    }
    
    
    @IBAction func forthButtonClicked(_ sender: UIButton) {
        buttonClicked = 4
        
        NotificationCenter.default.post(name: NSNotification.Name("popupResponse"), object: self)
        
        dismiss(animated: true)
    }
    
    
    


    @IBAction func closeButton(_ sender: UIButton) {
        
        
        
        NotificationCenter.default.post(name: NSNotification.Name("popupResponse"), object: self)
        
        dismiss(animated: true)
        
    }
    
    
    
    
    @IBAction func bigBlankButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: NSNotification.Name("popupResponse"), object: self)
        
        dismiss(animated: true)
    }
    
    
}
