//
//  ViewController.swift
//  UIElementsLayout
//
//  Created by Kisacka on 21/08/2020.
//  Copyright © 2020 Kisacka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var leftButtonUp: UIButton!
    @IBOutlet weak var rightButtonUp: UIButton!
    @IBOutlet weak var leftButtonDown: UIButton!
    @IBOutlet weak var rightButtonDown: UIButton!
 
    @IBOutlet var styleOutletCollection: [UIButton]!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var mainImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        styleUI()

        // Do any additional setup after loading the view.
    }


    func styleUI() {
        mainImageView.layer.cornerRadius = 10
        mainImageView.layer.borderWidth = 2
        mainImageView.layer.borderColor = UIColor.black.cgColor
        
        myLabel.layer.cornerRadius = 10
        myLabel.layer.borderWidth = 2
        myLabel.layer.borderColor = UIColor.black.cgColor
        
        styleOutletCollection.forEach { button in  button.layer.cornerRadius = 10
            button.layer.borderWidth = 2
            button.layer.borderColor = UIColor.black.cgColor
        }
    }
    
    
    func changeButtonImage(with image: String){
        leftButtonUp.setImage(UIImage(named: image), for: .normal)
        leftButtonUp.tintColor = .white
        leftButtonUp.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)

        self.view.backgroundColor = UIColor.black
    }
    
    func changeTextLabel(with message: String) {
        let text = message
        myLabel.text = text
        myLabel.backgroundColor = UIColor.gray
        mainImageView.image = UIImage(systemName: "mic")
    }
    
//    func changeButtonImageForAllButtons(with image: String, button: UIButton!) {
//        button.setImage(UIImage(named: image), for: .normal)
//        button.tintColor = .yellow
//        button.imageEdgeInsets = UIEdgeInsets(top: 8, left: 0, bottom: 10, right: 15)
//    }
        
        
    @IBAction func touchDragOutsideTapped(_ sender: Any) {
        print("touchDragOutsideTapped")
        changeButtonImage(with: "home.png")
    }
    
    
    
    @IBAction func leftBottomButtonTaped(_ sender: Any) {
        changeTextLabel(with: "leftBottomButtonTaped")
    }
    

//    @IBAction func touchUpInsideLeftButtonDownTapped(_ sender: Any) {
//        print("touchUpInsideLeftButtonDownTapped")
//    changeButtonImageForAllButtons(with: "home.png", button: leftButtonDown)
//        
//    }
    
    
}

