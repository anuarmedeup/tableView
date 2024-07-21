//
//  ViewController.swift
//  tableview
//
//  Created by Khadisha Bekkozhina on 20.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSurname: UILabel!

    @IBOutlet weak var labelName: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var labelDescription: UILabel!
    
    var person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        labelName.text = person.name
        labelSurname.text = person.surname
        imageView.image = UIImage(named: person.imagename)
        labelDescription.text = person.description
    }


}

