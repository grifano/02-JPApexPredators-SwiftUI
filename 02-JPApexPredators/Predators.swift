//
//  Predators.swift
//  02-JPApexPredators
//
//  Created by sorlenko on 27/06/2026.
//

import Foundation

class Predators {
    var allPredators: [ApexPredatorModel] = []
    
    init() {
        decodeApexPredatorsData()
    }
    
    func decodeApexPredatorsData() {
        if let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                
                allPredators = try decoder.decode([ApexPredatorModel].self, from: data)
                
            } catch {
                print("Json decoding: \(error)")
            }
        }
    }
}
