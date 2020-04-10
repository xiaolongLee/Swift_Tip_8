//
//  ViewController.swift
//  Swift 5.1闭包Closures与尾随闭包
//
//  Created by 李小龙 on 2020/4/10.
//  Copyright © 2020 李小龙. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let possibleString: String? = "An optional string."
        let forcedString: String = possibleString! // requires an exclamation mark
                 
        let assumedString: String! = "An implicitly unwrapped optional string."
        let implicitString: String = assumedString // no need for an exclamation mark
        
        doSomething(info: "test", clousre: test)
        
        doSomething(info: "Hello", clousre: { s in print(s) })
        
        doSomething(info: "World") { s in
                
                print(s)
        }
        
        let incrementByTen = makeIncrementer(forIncrement: 10)
        
        incrementByTen()
        // returns a value of 10
        incrementByTen()
        // returns a value of 20
        incrementByTen()
        
        let incrementBySeven = makeIncrementer(forIncrement: 7)

        incrementByTen()
        // returns a value of 40
        

        let alsoIncrementByTen = incrementByTen
        
        alsoIncrementByTen()
        // returns a value of 50
        
        incrementByTen()
        // returns a value of 60
        
        
    }
    
    func doSomething(info:(String), clousre:(String)->Void){
            
            clousre(info)
    }
    

    func test(k:(String)) {
                
            print(k)
    }
    
    
    func makeIncrementer(forIncrement amount: Int) -> () -> Int {
        var runningTotal = 0
        func incrementer() -> Int {
            runningTotal += amount
            return runningTotal
        }
        return incrementer
    }
     

}

