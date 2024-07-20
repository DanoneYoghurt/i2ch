//
//  NsfwView.swift
//  i2ch
//
//  Created by Антон Баскаков on 20.07.2024.
//

import SwiftUI

struct NsfwView: View {
    var body: some View {
        ZStack {
            Text("18+")
                .font(.caption)
                .fontWeight(.semibold)
                .frame(width: 35, height: 25)
                .background(Color.red)
                .clipShape(.capsule)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    NsfwView()
}
