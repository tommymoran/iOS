//
//  ViewController.swift
//  testrun
//
//  Created by thomas moran on 10/29/18.
//  Copyright © 2018 thomas moran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0;
    @IBOutlet weak var Label: UILabel!
    @IBAction func Button(_ sender: Any) {
        count = count + 1;
        Label.text = String(count);
        if(count == 2)
        {Label.text = "iOS > Android"}
        if(count == 3)
        {Label.text = "ligma"}
        if(count == 4)
        {Label.text = "sugma"}
    
    }
    
    @IBAction func ButtonN(_ sender: Any) {
        
        count = count - 1;
        if(count == 2)
        {Label.text = "iOS > Android (dec)"}
        if(count == 3)
        {Label.text = "ligma (dec)"}
        if(count == 4)
        {Label.text = "sugandesese (dec)"}
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

