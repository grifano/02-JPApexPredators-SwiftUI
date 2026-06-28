//
//  ApexPredatorModel.swift
//  02-JPApexPredators
//
//  Created by sorlenko on 27/06/2026.
//

import Foundation
import SwiftUI

struct ApexPredatorModel: Decodable, Identifiable {
    let id: Int
    let name: String
    let type: APType
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
    
    var image: String {
        name.lowercased().replacingOccurrences(of: " ", with: "")
    }
    
    enum APType: String, Decodable {
        case land
        case sea
        case air
        
        var background: Color {
            switch self {
            case .land:
                .brown
            case .sea:
                .blue
            case .air:
                .teal
            }
        }
    }
}
