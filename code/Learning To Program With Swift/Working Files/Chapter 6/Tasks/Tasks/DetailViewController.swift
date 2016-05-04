//
//  DetailViewController.swift
//  Tasks
//
//  Created by Mike Rogers on 9/30/14.
//  Copyright (c) 2014 Mike Rogers. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!

    @IBAction func saveTapped(sender: AnyObject) {
        if let detail: Task = self.detailItem {
            if let tf = self.textField {
                detail.title = tf.text
            }
        }
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    var detailItem: Task? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let detail: Task = self.detailItem {
            if let tf = self.textField {
                tf.text = detail.title
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

