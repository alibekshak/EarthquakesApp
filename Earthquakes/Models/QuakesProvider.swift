//
//  QuakesProvider.swift
//  Earthquakes
//
//  Created by Apple on 07.11.2023.
//

import Foundation

@MainActor
class QuakesProvider: ObservableObject {


    @Published var quakes: [Quake] = []
    
    let client: QuakeClient
    
    func fetchQuakes() async throws {
        let latestQuakes = try await client.quakes
        self.quakes = latestQuakes
    }
    
    func deleteQuakes(atOffsets offsets: IndexSet) {
        quakes.remove(atOffsets: offsets)
    }

    init(client: QuakeClient = QuakeClient()) {
        self.client = client
    }
}
