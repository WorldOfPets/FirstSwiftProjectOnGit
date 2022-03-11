//
//  ViewController.swift
//  firstLessonPoliv
//
//  Created by Student on 10.03.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var descriptionLable: UILabel!
    @IBOutlet weak var pushButton: UIButton!
    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        pushButton.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func ShowMessageButton(_ sender: Any) {
        if !myTextField.text!.isEmpty{
            showAlert(name: "Succesfully", desc: myTextField.text!)
        }
        pushButton.layer.borderWidth = 2
        pushButton.layer.borderColor = UIColor.white.cgColor
    }
    func showAlert(name: String, desc: String)
    {
        let alert = UIAlertController(title: name, message: desc, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "Close", style: .cancel, handler: nil)
        alert.addAction(cancel)
        present(alert, animated: true, completion: nil)
        
    }
    
}

