//
//  ViewController.swift
//  CoreData1number
//
//  Created by Boss on 4/11/19.
//  Copyright © 2019 Boss. All rights reserved.
//

import UIKit
//
class ViewController: UIViewController {
    @IBOutlet weak var txt: UITextField!
    var name: Entity?
    var indexPath: IndexPath?
    let context = AppDelegate.context
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if name != nil {
            txt.text = String(name!.number)
        }
        
        // Do any additional setup after loading the view.
    }

    @IBAction func ClickSave(_ sender: Any) {
        if indexPath != nil {
             name?.number = Int16(txt.text!)!
        }else{
            let new = Entity(context: context)
            new.number = Int16(txt.text!)!
        }
        AppDelegate.saveContext()
        navigationController?.popViewController(animated: true)
        }
    }
    

