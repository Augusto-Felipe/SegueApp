//
//  ViewController.swift
//  SegueApp
//
//  Created by Felipe Augusto Correia on 01/08/22.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myLabel2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Lifecycle
        print("ViewDidLoad function called")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("ViewDidDisappear function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("ViewWilDisappear function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("ViewWilAppear function called")
        myLabel2.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("ViewDidAppear function called")
    }

    @IBAction func nextClicked(_ sender: UIButton) {
        userName = myLabel2.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            // as
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = userName
        }
    }
    
}

