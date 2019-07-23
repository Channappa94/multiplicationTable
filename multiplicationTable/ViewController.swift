//
//  ViewController.swift
//  multiplicationTable
//
//  Created by IMCS2 on 7/22/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableVie: UITableView!
    @IBOutlet weak var myLabel: UILabel!
    var num = 0
    
    var numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    @IBOutlet weak var sliderValue: UISlider!
            
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func slider(_ sender: UISlider) {
        num = Int(sender.value)
        myLabel.text = ("number in slider is \(num)")
        tableVie.reloadData()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return numbers.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cellIdentifer = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifer, for: indexPath)
        
        
        var result = num * Int(numbers[indexPath.row])!
        var set = ("\(numbers[indexPath.row]) * \(num)  = \(result)")
        print(result)
        cell.textLabel?.text = set
        
        return cell
        
    }
    
    
}

