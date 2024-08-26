//
//  ViewController.swift
//  ApolisAbouzarFirst
//
//  Created by Abouzar Moradian on 8/26/24.
//

import UIKit

class ViewController: UIViewController {
    
    let inputArray: [Int] = [1, 4, 2, 1, 4, 5, 3, 4, 4, 8, 7, 7]
    var outputArray: [Int] = []
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        removeDuplicate()
        printEvenNumbers()
        printName(input: Int.random(in: 0...100))
        
        
    }
    
    func removeDuplicate() {
        
        for num in inputArray{
            if !outputArray.contains(num){
                outputArray.append(num)
            }
        }
    }
    
    func printEvenNumbers(){
        
        for num in 0...100 {
            if num % 2 == 0{
                print(num)
            }
        }
    }
    
    func printName(input: Int) {
        let firstName: String = "Abouzar"
        let lastName: String = " Moradian"
        var output: String = ""
        guard input >= 0 && input <= 100 else { return }

        
        if input % 3 == 0{
            output += firstName
        }
        if input % 5 == 0{
            output += lastName
        }
        print(output)
            
  
            
        
    }

}

