//
//  DetailViewController.swift
//  DGStarter
//
//  Created by Stephanie Hernandez on 1/29/23.
//

import UIKit

class DetailViewController: UIViewController {
    // Property
    var dinosaur: Dinosaur?
    
    @IBOutlet weak var dinoImage: UIImageView!
    @IBOutlet weak var dinoName: UILabel!
    @IBOutlet weak var dinoType: UILabel!
    @IBOutlet weak var dinoWeight: UILabel!
    @IBOutlet weak var dinoHeight: UILabel!
    @IBOutlet weak var dietLabel: UILabel!
    @IBOutlet weak var eraLabel: UILabel!
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // Do any additional setup after loading the view.
        if let dinosaur = dinosaur {
            print(dinosaur.name)
            // Configure the dinosaur image and dynamic labels
            dinoImage.image = dinosaur.image
            dinoName.text = dinosaur.name
            dinoType.text = dinosaur.type
            dinoWeight.text = String(dinosaur.weight) + " KG"
            dinoHeight.text = String(dinosaur.height) + " M"
            dietLabel.text = String(dinosaur.diet)
            eraLabel.text = String(dinosaur.era)
            regionLabel.text = String(dinosaur.region)
            speedLabel.text = String(dinosaur.speed) + " mph"
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
