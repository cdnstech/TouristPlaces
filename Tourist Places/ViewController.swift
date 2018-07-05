//
//  ViewController.swift
//  Tourist Places
//
//  Created by Mdit on 05/07/18.
//  Copyright © 2018 Mdit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var index : Int = 0
    let touristPlaceTitles : [String] =
        ["Kozhikode Beach","Mananchira" , "Thusharagiri Falls" , "Vayalada"]
    let touristPlaceImages : [String] =
        ["beach","mananchira" , "thusharagiri" ,"vayalada"]
    let touristPlaceDescriptions : [String] =
        ["The beach is the most popular retreat for locals. In spite of beautification works and lax coastal management, it remains unexploited and visually pleasing. This shore has been a witness to many historic events, including pitched naval battles and the arrival of ships from distant lands. Uddanda, a Sanskrit poet in Zamorin's court, wrote in his Kokila Sandeśa: The ocean, the father of the goddess of riches [Indira is a synonym of Lakshmi] seeing that his daughter has settled down in Kukkatakroda [Sanskrit for Kozhikode], is embracing the place, presenting it with shipful of jewels Several national leaders like Mahatma Gandhi, Khan Abdul Ghaffar Khan, Indira Gandhi and Krishna Menon have addressed people here. The 'Beach Road' was renamed Gandhi Road from Evan's Road after Mahatma Gandhi's visit in January 1934. Two dilapidated piers can be seen extending into the sea. The 'Iron Screw-pile' pier to the north was built in 1871, 400 ft long (120 m) with a 'T' end. Numerous cranes on these piers once loaded spices and other goods destined to foreign ports like Aden, Genoa, Oslo, London, Bremen, Hamburg, New York City etc.",
         "Mananchira is a large tank in the heart of the city. Mananchira or Mana Vikraman Tank (Manan or Mana Vikraman being the Coronation name of the Zamorins) seems to have been the drinking water source for the entire Palace complex (previously located at the Kottaparambu Women and Children Hospital). Surrounding the Mananchira are several important institutions. The Town Hall was constructed in 1891 by the salt merchants (previously called Salt Abkari Town Hall) and has been an important stage for several popular agitations and ceremonies during the freedom movement and thereafter. The Pattalapalli or Military Mosque was originally built for the Mysore soldiers who had surrounded the Palace during the Mysore invasion ",
         "Thusharagiri offers endless scope for trekking, rock climbing and wild life sanctuary visits. It is around 50 kilometres (31 mi) from Kozhikode. The nearest town Kodancherry is around 11 kilometres (6.8 mi) from Thusharagiri. The other main towns situated here are Thiruvambady which is 18 km away and Thamarassery which is 17 km away. One has to purchase all necessary things for trekking from here." ,
         "Vayalada is a quite beautiful peak in Kozhikode, Kerala. Vayalada hills is known as Malabar's Gavi. It situated at a height of about 567 meters above sea level and 38kms away from Kozhikode city. The main attraction on Vayalada is the view from its top. From the top below the clouds we can see the green land sorounded by water. The view of kakkayam dam resorvior is a refreshing/ charmfull feel to our minds. The viewpoint which gives you this natural treat is Mullanpara. Along with this view Vayalada gives you an Offroading and Trecking experience too. The 2 km Offroad from Vayalada town to the parking is little bit adventures. And from there the trecking starts. The 1.5 Kms trecking to the Kurishumala is a great experience. The cool air and the mist atracts touristers to Vayalada."
    ]
    
    @IBOutlet weak var placeImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var palceDescription: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       updateUI()
    }
    
    func updateUI(){
       
        if index < 1 || index > 3 {
            index = 0
        }
        placeImageView.image = UIImage(named: touristPlaceImages[index])
        titleLabel.text = touristPlaceTitles[index]
        palceDescription.text = touristPlaceDescriptions[index]
        
        
    }


    @IBAction func nextPlace(_ sender: UIButton) {
        
        index += 1
        updateUI()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

