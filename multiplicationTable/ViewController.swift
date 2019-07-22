//
//  ViewController.swift
//  multiplicationTable
//
//  Created by IMCS2 on 7/22/19.
//  Copyright © 2019 com.phani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var numbers = ["1", "2", "3", "4", "5", "6", "8", "9", "10"]
    @IBOutlet weak var sliderValue: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderAction(slider: UISlider) {
        print("The value of the slider \(slider.value)")
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return numbers.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cellIdentifer = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifer, for: indexPath)
        cell.textLabel?.text = numbers[indexPath.row]
        return cell
        
    }
    
    
}

