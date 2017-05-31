//
//  ViewController.swift
//  In-N-Out Menu
//
//  Created by Brian Chun on 3/17/17.
//  Copyright © 2017 Brian Chun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var Background: UIScrollView!
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    let Backgroundheight = Background
        .contentSize.height - Background.bounds.height
        let percentageScroll = Background.contentOffset.y / Backgroundheight
        let BackgroundHeight = Background.contentSize.height - Background.bounds.height
        
        Background.contentOffset = CGPoint(x: 0, y: BackgroundHeight * percentageScroll)
    
     Background.delegate = self
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

