//
//  Dice Project.swift
//  
//
//  Created by Maddox on 9/1/20.
//

import Foundation
import AppKit

var run:Int

print("Roll a Die?", terminator: " ")
var start = readLine()
if start == "yes" {
    run = 0
    while run == 0 {
        let die = Int.random(in: 1...6) //change to var when looping algorithm is in place
        
        let red:CGFloat = CGFloat.random(in: 0...256)
        let green:CGFloat = CGFloat.random(in: 0...256)
        let blue:CGFloat = CGFloat.random(in: 0...256)
        
        var color = NSColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        print(die)
        run += 1
    }
}
else {
    print("Goodbye!")
}
