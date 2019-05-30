//
//  MainViewController.swift
//  projectx
//
//  Created by Artem Polosukhin on 29/05/2019.
//  Copyright © 2019 Artem Polosukhin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var GOButton: UIButton!
    
    @IBOutlet weak var bigTitleLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    var buttonClicked: Int? = 0
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //listen to notification from the popup
       NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: NSNotification.Name(rawValue: "popupResponse"), object: nil)
        
    }
   
    
    
    @objc func handlePopupClosing(notification: Notification){
        
        let popupVC = notification.object as! PopupViewController
        
        buttonClicked = popupVC.buttonClicked
        
        if let answer = popupVC.buttonClicked {
            GOButton.setTitle( "GO with " + "\(answer)" , for: .normal)
        } else {
            GOButton.setTitle( "GO" , for: .normal)
        }
        
    }
    
    
    
    @IBAction func GOButtonClicked(_ sender: UIButton) {
        
    }
    
    
    
    
    @IBAction func BlankSideButton(_ sender: UIButton) {
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "popupSegue" { 
            
            let popup = segue.destination as! PopupViewController
            
            //popup.titleValue = "Lorem I. Dolor sit amet. Lorem ipsum 1"
            
        }
        
        
        
    }
    
    
}
