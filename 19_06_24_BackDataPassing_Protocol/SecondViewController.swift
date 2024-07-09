//
//  SecondViewController.swift
//  19_06_24_BackDataPassing_Protocol
//
//  Created by Vishal Jagtap on 09/07/24.
//

import UIKit

//step 1
protocol BackDataPassing{
    func backDataPass(fistName : String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    var backDataPassDelegate : BackDataPassing?         //step 2

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func btnBack(_ sender: Any) {
        
        guard let delegate1 = backDataPassDelegate else { return }
        let firstNameToBePassed = self.firstNameTextField.text
        delegate1.backDataPass(fistName: firstNameToBePassed!)
        
        self.navigationController?.popViewController(animated: true)
    }
}
