//
//  ViewController.swift
//  cardagain
//
//  Created by Елизавета Матвеева on 29.05.2024.
//

import UIKit

@MainActor
class ViewController: UIViewController {
    let cards = CardInfoController()
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        descr.text = ""
        cardNmae.text = ""
        
        
        
        Task{
            do{
                let cardInfo = try await cards.fetchRandomCard()
                
                for card in cardInfo.cards {
                    self.cardNmae.text = card.name
                    self.descr.text = card.meaning_up
                }
            
            }catch{
                self.cardNmae.text = ""
                print(error)
                self.descr.text = error.localizedDescription
                
            }
        
        }
        
      
      
    }
    @IBOutlet weak var cardNmae: UILabel!
    @IBOutlet weak var descr: UILabel!
    
}

