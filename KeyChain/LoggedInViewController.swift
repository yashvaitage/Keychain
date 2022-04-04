//
//  LoggedInViewController.swift
//  KeyChain
//
//  Created by Admin on 04/04/22.
//

import UIKit
import Lottie

class LoggedInViewController: UIViewController {
    @IBOutlet weak var AnimationView: AnimationView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.lottieAnimation()
    }
    
    func lottieAnimation()
    {
        let animationView = Lottie.AnimationView(name: "login success")
        animationView.frame = CGRect(x: 20, y: 20, width: 350, height: 350)
        animationView.center = self.view.center
        animationView.contentMode = .scaleAspectFit
        view.addSubview(animationView)
        animationView.play()
        animationView.loopMode = .loop
    }
    

}
