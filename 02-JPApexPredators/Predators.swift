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
    
    func search(for searchQuery: String) -> [ApexPredatorModel] {
        if searchQuery.isEmpty {
            return allPredators
        } else {
            return allPredators.filter { predator in
                predator.name.localizedCaseInsensitiveContains(searchQuery)
            }
        }
    }
    
    func sort(by isAlphabetical: Bool) {
        allPredators.sort { predator1, predator2 in
            if isAlphabetical {
                predator1.name < predator2.name
            } else {
                predator1.id < predator2.id
            }
        }
    }
}
