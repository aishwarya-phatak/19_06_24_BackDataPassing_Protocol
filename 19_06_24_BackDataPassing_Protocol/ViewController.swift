//
//  ViewController.swift
//  19_06_24_BackDataPassing_Protocol
//
//  Created by Vishal Jagtap on 09/07/24.
//

import UIKit

//step 4 - conformance to protocol
class ViewController: UIViewController, BackDataPassing{

    @IBOutlet weak var firstNameLabel: UILabel!
    private var reuseIdentifier = "SecondViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //step 5 -- implement stubs
    func backDataPass(fistName: String) {
        self.firstNameLabel.text = fistName
    }
    
    @IBAction func btnNext(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: reuseIdentifier) as! SecondViewController
        secondViewController.backDataPassDelegate = self  //step 6 -- assign delegate property to self i.e. current instance
        self.navigationController?.pushViewController(secondViewController, animated: true)
        
    }
}
