//
//  ViewController.swift
//  ImageMask
//
//  Created by Damien Laughton on 12/05/2015.
//  Copyright (c) 2015 Mobilology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var imageView1: UIImageView!
  @IBOutlet weak var imageView2: UIImageView!
  @IBOutlet weak var imageView3: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    let originalWilliam = UIImage(named: "william_shatner")
    let imageMask1 = UIImage(named: "ImageMask1")
    var william1 = originalWilliam?.scale(CGSizeMake(270, 300))
    william1 = william1?.mask(imageMask1!)
    
    self.imageView1.image = william1
    

    let imageMask2 = UIImage(named: "ImageMask2")
    var william2 = originalWilliam?.scale(CGSizeMake(270, 300))
    william2 = william2?.mask(imageMask2!)
    
    self.imageView2.image = william2
    

    let imageMask3 = UIImage(named: "ImageMask3")
    var william3 = originalWilliam?.scale(CGSizeMake(270, 300))
    william3 = william3?.mask(imageMask3!)
    
    self.imageView3.image = william3
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

