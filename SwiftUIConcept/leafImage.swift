//
//  leafImage.swift
//  SwiftUIConcept
//
//  Created by Wing Hei Tsui on 25/05/2023.
//

import SwiftUI

struct leafImage: View {
    
    let keyword: String
    let symbol: String
    @ScaledMetric(relativeTo: .title) var paddingWidth = 14.5
    
    var body: some View {
        Label(keyword, systemImage: symbol)
            .font(.title)
            .foregroundColor(.white)
            .padding(paddingWidth)
            .background(.purple.opacity(0.75), in: Capsule())
    }
}

struct leafImage_Previews: PreviewProvider {
    static let keywords = ["chives", "fern-leaf lavender"]
    
    static var previews: some View {
        VStack {
            ForEach(keywords, id: \.self){ word in
                leafImage(keyword: word, symbol: "leaf")
            }
        }
    }
}

