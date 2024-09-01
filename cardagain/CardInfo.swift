//
//  CardInfo.swift
//  cardagain
//
//  Created by Елизавета Матвеева on 29.05.2024.
//

import Foundation

struct CardInfo: Codable{
    var name: String
    var meaning_up: String
}

struct Cards: Codable{
    var cards: [CardInfo]
}
