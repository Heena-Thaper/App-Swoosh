//
//  DesiredLeagueVC.swift
//  App-Swoosh
//
//  Created by Heena on 24/05/20.
//  Copyright © 2020 Heena. All rights reserved.
//

import UIKit

class DesiredLeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    
    
    @IBAction func onMenTapped(_ sender: Any) {
         nextBtn.isEnabled = true
        selectedLegaue(selectedLeague: "Men")
        
    }
    
    @IBAction func onWomenTapped(_ sender: Any) {
         nextBtn.isEnabled = true
        selectedLegaue(selectedLeague: "Women")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        nextBtn.isEnabled = true
        selectedLegaue(selectedLeague: "Co-ed")
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "BeginnerVC", sender: self)
       
    }
    
    func selectedLegaue(selectedLeague: String){
        player.desiredLeageue = selectedLeague
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let beginnerVC = segue.destination as? BeginnerVC {
            beginnerVC.player = player
        }
    }
}
