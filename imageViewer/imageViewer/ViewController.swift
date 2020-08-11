//
//  ViewController.swift
//  imageViewer
//
//  Created by Junho Kim on 2020/08/11.
//  Copyright © 2020 Junho Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numImage: Int?
    var imageName: String?
    var currentImage: UIImage?
    let maxImageNum = 3
    
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numImage = 1
        imageName = String(numImage!) + ".jpeg"
        currentImage = UIImage(named: imageName!)
        
        imgView.image = currentImage
    }
    
    @IBAction func goForwardBtn(_ sender: UIButton) {
        numImage = numImage! + 1
        if(numImage! > maxImageNum){
            numImage = 1
        }
        imageName = String(numImage!) + ".jpeg"
        currentImage = UIImage(named: imageName!)
        imgView.image = currentImage
    }
}

