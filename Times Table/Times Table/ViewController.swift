//
//  ViewController.swift
//  Times Table
//
//  Created by Mani on 8/22/18.
//  Copyright © 2018 Mani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var slider: UISlider!
    @IBAction func sliderChanged(_ sender: Any) {
        table.reloadData()
    }
    
    @IBOutlet weak var table: UITableView!
    
    internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String((Int(slider.value * 20)) * (indexPath.row + 1))
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

