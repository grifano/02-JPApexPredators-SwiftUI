//
//  DinoDetailsView.swift
//  02-JPApexPredators
//
//  Created by sorlenko on 29/06/2026.
//

import SwiftUI

struct PredatorDetailsView: View {
    let dino: ApexPredatorModel
    
    var body: some View {
        Image(dino.image)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    PredatorDetailsView(dino: Predators().allPredators[0])
}
