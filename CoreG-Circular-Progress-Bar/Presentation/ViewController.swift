//
//  ViewController.swift
//  CoreG-Circular-Progress-Bar
//
//  Created by MacBook Pro on 23.11.21.
//

import UIKit

class ViewController: UIViewController {
    
    /// CircularProgressBar
    @IBOutlet weak var progressBar: UICircularProgressBar!
    
    /// Overall progress
      var progress : Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        perform(#selector(startUpload), with: nil, afterDelay: 0.5)
        
    }

       @objc func startUpload() {
           progressBar.labelSize = 30
           progressBar.safePercent = 100
           progressBar.setProgress(to: progress, withAnimation: true)
           
           let timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(updateProgress), userInfo: nil, repeats: true)
           //timer.fire()
           RunLoop.main.add(timer, forMode: .common)
       }
       
       @objc func updateProgress() {
           
           progressBar.setProgress(to: progress, withAnimation: true)
           progress = progress + 0.005
       }

    
}

