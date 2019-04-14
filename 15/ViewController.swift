//
//  ViewController.swift
//  15
//
//  Created by User16 on 2019/4/14.
//  Copyright © 2019 User16. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var singer: UILabel!
    @IBOutlet weak var start: UIButton!
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var song: UISlider!
    @IBOutlet weak var date: UIDatePicker!
    @IBOutlet weak var melody: UISwitch!
    @IBOutlet weak var gender: UISegmentedControl!
    @IBOutlet weak var myname: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func name(_ sender: UITextField) {
    }
   
    @IBAction func change(_ sender: UISlider) {
        if song.value >= 1 && song.value < 2 {
            singer.text = "薛之謙"
            photo.image = UIImage(named: "薛之謙")
        }
        else if song.value >= 2 && song.value < 3{
            singer.text = "林俊傑"
            photo.image = UIImage(named: "林俊傑")
        }
        else if song.value >= 3 && song.value < 4{
            singer.text = "A-lin"
            photo.image = UIImage(named: "A-lin")
        }
        else if song.value >= 4 && song.value < 5{
            singer.text = "郭靜"
            photo.image = UIImage(named: "郭靜")
        }
    }
    @IBAction func test(_ sender: UIButton) {
        var number = Int.random(in: 0...10)
        if number <= 5 && gender.selectedSegmentIndex == 0{
            singer.text = "薛之謙"
            photo.image = UIImage(named: "薛之謙")
        }
        else if number >= 6 && number <= 10 && gender.selectedSegmentIndex == 0{
            singer.text = "林俊傑"
            photo.image = UIImage(named: "林俊傑")
        }
        else if number <= 5 && gender.selectedSegmentIndex == 1{
            singer.text = "A-lin"
            photo.image = UIImage(named: "A-lin")
        }
        else if number >= 6 && number <= 10 && gender.selectedSegmentIndex == 1{
            singer.text = "郭靜"
            photo.image = UIImage(named: "郭靜")
    }
}

}
