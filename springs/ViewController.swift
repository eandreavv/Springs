//
//  ViewController.swift
//  springs
//
//  Created by Maestro on 22/01/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var vwCuadro: UIView!
    @IBOutlet weak var vwCuadroAzul: UIView!
    @IBOutlet weak var vwCuadroRosa: UIView!
    
    var azulArriba = false
    
    @IBAction func btnEscala1(_ sender: Any) {
    
        if azulArriba
        {
            UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: [], animations: {
                
                self.vwCuadroAzul.center.y += 100
                self.vwCuadroAzul.center.x = 16
                self.vwCuadroAzul.transform = CGAffineTransform(scaleX: 1, y: 1)
                
            }, completion: nil)
         
        }else{
            UIView.animate(withDuration: 1.5, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: [], animations: {
                
                self.vwCuadroAzul.center.y -= 100
                self.vwCuadroAzul.center.x = self.view.bounds.width / 2
                self.vwCuadroAzul.transform = CGAffineTransform(scaleX: 1.5, y: 1.5)
                
            }, completion: nil)

        }
        
        azulArriba = !azulArriba
        
    }
    

    @IBAction func btnEscala2(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        //vwCuadro.alpha = 0.0
    }
    
    override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 1.5, delay: 0.5, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: [], animations: {
        
            self.vwCuadro.center.y += 200
            //self.vwCuadro.alpha = 1.0
            self.vwCuadro.backgroundColor = UIColor.cyan
            
        }, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

