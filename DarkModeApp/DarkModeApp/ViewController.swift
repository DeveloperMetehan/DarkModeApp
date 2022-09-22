//
//  ViewController.swift
//  DarkModeApp
//
//  Created by Gappze on 20.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
   
        //overrideUserInterfaceStyle = .light // kullanıcının ayarlardan hangisini seçtiğine bakmaz. direkt light moda çevirir.
       
  }

    override func viewWillAppear(_ animated: Bool) {
        let userInterfaceStyle =  traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
            }
        else {
            changeButton.tintColor = UIColor.blue
            
        }
    
  
    }
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        let userInterfaceStyle =  traitCollection.userInterfaceStyle
        if userInterfaceStyle == .dark {
            changeButton.tintColor = UIColor.white
            }
        else {
            changeButton.tintColor = UIColor.blue
            
        }
    }
}

