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
    var label = UILabel()
    var button = UIButton()
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        removeDuplicate()
        printEvenNumbers()
        printName(input: Int.random(in: 0...100))
        secondLargest(input: inputArray)
        
        label.backgroundColor = .blue
        label.textColor = .white
        label.textAlignment = .center
        label.frame = CGRect(x: Int(view.frame.width)/2 - Int(view.frame.width)/4, y: Int(view.frame.height)/2 - Int(view.frame.width)/4, width: Int(view.frame.width)/2, height: Int(view.frame.width)/2)
        view.addSubview(label)
        
        button.backgroundColor = .gray
        button.setTitle("Display", for: .normal)
        button.frame = CGRect(x: Int(view.frame.width)/2 - Int(view.frame.width)/4, y: Int(view.frame.height)/2 + Int(view.frame.width)/4 + 20, width: Int(view.frame.width)/2, height: Int(view.frame.width)/4)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        view.addSubview(button)
        
        
    }
    
    @objc func buttonAction(_ sender: UIButton){
        
        if let buttonTitle = sender.currentTitle, buttonTitle == "Display"{
            sender.setTitle("Hide", for: .normal)
        }else{
            sender.setTitle("Display", for: .normal)
        }
        if let text = label.text, text == "Hello!" {
            label.text = ""
        }else{
            label.text = "Hello!"
        }
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
    
    func secondLargest(input: [Int]) -> Int?{
        
        guard input.count < 1 else {return nil}
        var largest: Int = Int.min
        var secondLargest: Int = Int.min
        
        for num in input{
            if largest < num{
                secondLargest = largest
                largest = num
            }else if secondLargest < num {
                secondLargest = num
            }
        }
        
        return secondLargest
    }

}

