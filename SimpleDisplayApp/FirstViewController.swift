//
//  FirstViewController.swift
//  SimpleDisplayApp
//
//  Created by Max MacLeod on 13/08/2021.
//  Copyright (c) 2021 Kindred Group. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {


    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var telephone: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let vc = segue.destination as? SecondViewController
        {
            vc.name = name.text
            vc.telephone = telephone.text
        }
        
    }

}
