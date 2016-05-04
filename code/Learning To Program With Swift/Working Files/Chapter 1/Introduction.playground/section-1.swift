// Playground - noun: a place where people can play

import UIKit

var str = "Let's go play!"
let myLabel = UILabel(frame:CGRectMake(0,0,300,300))

myLabel.text = str
myLabel.textAlignment = NSTextAlignment.Center
myLabel.backgroundColor = UIColor(red: 1, green: 1, blue: 0, alpha: 1.0)
myLabel.layer.masksToBounds = true
myLabel.layer.cornerRadius = 10

myLabel


