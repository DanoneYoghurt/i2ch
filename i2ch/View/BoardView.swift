//
//  BoardView.swift
//  i2ch
//
//  Created by Антон Баскаков on 20.07.2024.
//

import SwiftUI

struct BoardView: View {
    var id: String
    
    var body: some View {
        Text(id)
    }
        
}

#Preview {
    BoardView(id: "b")
}
