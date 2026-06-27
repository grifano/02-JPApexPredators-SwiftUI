//
//  ApexPredatorModel.swift
//  02-JPApexPredators
//
//  Created by sorlenko on 27/06/2026.
//

struct ApexPredatorModel: Decodable {
    let id: Int
    let name: String
    let type: String
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScene]
    let link: String
    
    struct MovieScene: Decodable {
        let id: Int
        let movie: String
        let sceneDescription: String
    }
}
