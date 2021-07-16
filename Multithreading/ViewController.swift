//
//  ViewController.swift
//  Multithreading
//
//  Created by Admin on 6.07.21.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {
    
    var imageVC: ImageViewController?
    
    let imagePath = "https://w7.pngwing.com/pngs/916/1018/png-transparent-bowie-knife-counter-strike-global-offensive-hunting-survival-knives-throwing-knife-knife-sport-tiger-dagger-thumbnail.png"
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "Image")
    }

    @IBAction func LoadImage(_ sender: Any) {
        guard let VC = imageVC else { return }
        
        _ = VC.view

        VC.ImageVC.sd_setImage(with: URL(string: self.imagePath), completed: nil)
        
        
        navigationController?.show(VC, sender: nil)
    }
    
    
    
}
