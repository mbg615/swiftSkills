//
//  main.swift
//  
//
//  Created by Maddox on 8/29/20.
//

import Foundation

var run:Int = 0
var average:Int = 0

print("Do you have any grades to enter?", terminator: " ")
let input = readLine()
if input == "yes" {
    run = 0
}
if input == "no" {
    run += 1
}
while run == 0 {
    
    if run == 0 {
    
        print("Enter your grade", terminator: " ")
        if let grade = readLine() {
          if let yourGrade = Int(grade) {
              if yourGrade >= 91 {
                  print("a \(yourGrade) is an A")
              }
            
            if yourGrade >= 81 {
                if yourGrade < 91 {
                print("a \(yourGrade) is a B")
              }
            }
            
            if yourGrade >= 72 {
                if yourGrade <= 81 {
                    print("a \(yourGrade) is a C")
                }
            }
            
            if yourGrade >= 70 {
                if yourGrade < 72 {
                    print("a \(yourGrade) is a D")
                }
            }
            
            if yourGrade <= 69 {
                print("a \(yourGrade) is a F")
            }
      }
    }
  }
    var gradeList = []
    gradeList.append(grade)
    
    var average = gradeList.reduce(0, +)
    print("The average of your scores is \(average)")
    
    print("Do you have any more grades to enter?", terminator: " ")
    let input = readLine()
    if input == "yes" {
        run = 0
    }
    
    if input == "no" {
       run += 1
  }
}

