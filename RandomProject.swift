//
//  Random Project.swift
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
        
        let red:Int = Int.random(in: 0...256)
        let green:Int = Int.random(in: 0...256)
        let blue:Int = Int.random(in: 0...256)
        
        func RGB_to_NSColor(red: Int, green:Int, blue:Int) -> NSColor {
            return NSColor(
            red: CGFloat((red & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((green & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(blue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
            )
        }
        
        let textColor: NSColor = RGB_to_NSColor(red: red, green: green, blue: blue)

        print("You rolled a \(die) with NSColor \(textColor)")
        run += 1
    }
}
else {
    print("Goodbye!")
}
print("Goodbye!")
