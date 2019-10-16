//
//  ViewController.swift
//  chatapp
//
//  Created by MANINDER SINGH on 06/09/19.
//  Copyright © 2019 MANINDER SINGH. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet weak var myimageview: UIImageView!
    @IBOutlet weak var txtText: UITextField!
    var ref = DatabaseReference.init()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.ref = Database.database().reference()
       let tapGesture = UITapGestureRecognizer()
        myimageview.isUserInteractionEnabled = true
        myimageview.addGestureRecognizer(tapGesture)
        
        
        
    }
    
    @obj
    
    @IBAction func btnsaveclick(_ sender: UIButton) {
           self.saverFIRData()
    }
    func saverFIRData(){
            let dict = ["name": "ankita", "text": txtText.text!]
            self.ref.child("chat").childByAutoId().setValue(dict)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }




