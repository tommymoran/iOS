//
//  ViewController.swift
//  testbutton
//
//  Created by thomas moran on 10/29/18.
//  Copyright © 2018 thomas moran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var x = 0;
    @IBAction func IncrementButton(_ sender: Any) {
        x = x + 1;
        Label.text = String(x);
        if (x == 3)
        {Label.text = "Sugandeese"}
    }
    
    
    @IBAction func DecrementButton(_ sender: Any) {
        x = x - 1;
        Label.text = String(x);
        if (x == 3)
        {Label.text = "ligma"}
        if (x == 4)
        {Label.text = "sugma"}
    }
    
    @IBOutlet weak var Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

