//
//  ThumbnailScrollView.swift
//  i2ch
//
//  Created by Антон Баскаков on 22.07.2024.
//

import SwiftUI

struct ThumbnailImageView: View {
    
    let thumbnailPath: String?
    
    var body: some View {
        AsyncImage(url: URL(string: "https://2ch.hk\(thumbnailPath ?? "")")!) { image in
            image
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical, 10)
        } placeholder: {
            ProgressView()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.vertical, 10)
        }
    }
}

#Preview {
    ThumbnailImageView(thumbnailPath: "/abu/src/52084/17188301797610.jpg")
}
