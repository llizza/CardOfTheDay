//
//  Controller.swift
//  cardagain
//
//  Created by Елизавета Матвеева on 29.05.2024.
//

import Foundation

class CardInfoController {
    
    enum CardsError: Error, LocalizedError{
        case itemNotFound
    }
    
    func fetchRandomCard() async throws -> Cards {
        let url = URL(string: "https://tarotapi.dev/api/v1/cards/random?n=1")!
        let data = try await Data(contentsOf: url, options: [])
       
//        guard let httpResponse = response as? HTTPURLResponse,
//              httpResponse.statusCode == 200 else{
//            throw CardsError.itemNotFound
//        }
        
        let jsonDecoder = JSONDecoder()
        let content = try jsonDecoder.decode(Cards.self, from: data)
        print(data)
        print(content)
        return (content)
        
    }}
