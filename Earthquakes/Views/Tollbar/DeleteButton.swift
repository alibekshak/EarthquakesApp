//
//  DeleteButton.swift
//  Earthquakes
//
//  Created by Apple on 01.11.2023.
//

import SwiftUI

struct DeleteButton: View {
    var action: () -> Void = {}
    var body: some View {
        Button(action: action) {
            Image(systemName: "trash")
        }
    }
}

struct DeleteButton_Previews: PreviewProvider {
    static var previews: some View {
        DeleteButton()
            .previewLayout(.sizeThatFits)
    }
}
