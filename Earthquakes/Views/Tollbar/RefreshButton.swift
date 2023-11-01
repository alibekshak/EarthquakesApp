//
//  RefreshButton.swift
//  Earthquakes
//
//  Created by Apple on 01.11.2023.
//

import SwiftUI

struct RefreshButton: View {
    var action: () -> Void = {}
    var body: some View {
        Button(action: action) {
            Image(systemName: "arrow.clockwise")
        }
    }
}

struct RefreshButton_Previews: PreviewProvider {
    static var previews: some View {
        RefreshButton()
            .previewLayout(.sizeThatFits)
    }
}
