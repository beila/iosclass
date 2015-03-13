// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var frame = CGRectMake(0, 0, 480, 320);

var view = UIView(frame: frame);
view.backgroundColor = UIColor.redColor();

var total = 0;
for (var i = 0; i < 100; i++) {
    for (var j = 0; j < 100; j++) {
        total += i;
    }
}