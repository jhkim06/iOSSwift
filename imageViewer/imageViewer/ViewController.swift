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
    
    var currentDate: Date?
    var dateFormatter: DateFormatter?
    @IBOutlet var dateString: UILabel!
    
    @IBOutlet var forwardBtn: UIButton!
    @IBOutlet var backwardBtn: UIButton!
    
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numImage = 1
        imageName = String(numImage!) + ".jpeg"
        currentImage = UIImage(named: imageName!)
        
        currentDate = Date()
        dateFormatter = DateFormatter()
        dateFormatter!.dateStyle = .full
        dateString.text = dateFormatter!.string(from: currentDate!)
        //dateString.text = "날짜"
        
        imgView.image = currentImage
        
        forwardBtn.setTitle("다음", for:.normal)
        backwardBtn.setTitle("이전", for: .normal)
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
    
    @IBAction func goBackwardBtn(_ sender: UIButton) {
        numImage = numImage! - 1
        if(numImage! < 1){
            numImage = maxImageNum
        }
        imageName = String(numImage!) + ".jpeg"
        currentImage = UIImage(named: imageName!)
        imgView.image = currentImage
    }
}

