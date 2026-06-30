//
//  ContentView.swift
//  02-JPApexPredators
//
//  Created by sorlenko on 27/06/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State var searchQuery = ""
    @State var isAlphabetical = false
    let predators = Predators()
    
    var filteredPredators: [ApexPredatorModel] {
        predators.sort(by: isAlphabetical)
        
        return predators.search(for: searchQuery)
    }
    
    var body: some View {
        NavigationStack {
            List(filteredPredators) { predator in
                NavigationLink {
                    PredatorDetailsView(predator: predator)
                } label: {
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
            }
            .navigationTitle("Apex Predators")
            .searchable(text: $searchQuery)
            .animation(.default, value: searchQuery)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        isAlphabetical.toggle()
                    } label: {
                        Image(systemName: isAlphabetical ? "film" : "textformat")
                    }
                }
            }
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
