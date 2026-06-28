//
//  ContentView.swift
//  02-JPApexPredators
//
//  Created by sorlenko on 27/06/2026.
//

import SwiftUI

struct ContentView: View {
    
    let predators = Predators()
    
    var body: some View {
        List(predators.allPredators) { predator in
            HStack {
                // Image
                Image(predator.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .shadow(color: .white, radius: 4)
                
                VStack(alignment: .leading) {
                    // Name
                    Text(predator.name)
                        .font(.title3)
                        .fontWeight(.bold)
                    
                    // Type
                    Text(predator.type.rawValue)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(predator.type.background)
                        .clipShape(.capsule)
                }
                .padding(.leading, 8)
            }
            .padding(.vertical, 12)
            
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
