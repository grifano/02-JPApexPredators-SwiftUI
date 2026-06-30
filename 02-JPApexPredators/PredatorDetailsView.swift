//
//  DinoDetailsView.swift
//  02-JPApexPredators
//
//  Created by sorlenko on 29/06/2026.
//

import SwiftUI

struct PredatorDetailsView: View {
    let predator: ApexPredatorModel
    
    var body: some View {
        Image(predator.image)
            .resizable()
            .scaledToFit()
    }
}

#Preview {
    PredatorDetailsView(predator: Predators().allPredators[0])
}
