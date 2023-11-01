//
//  Quake.swift
//  Earthquakes
//
//  Created by Apple on 01.11.2023.
//

import Foundation

struct Quake {
    let magnitude: Double
    let place: String
    let time: Date
    let code: String
    let detail: URL
}

extension Quake: Identifiable {
    var id: String { code }
}
