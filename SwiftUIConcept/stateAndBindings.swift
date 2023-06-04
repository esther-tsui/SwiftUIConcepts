//
//  stateAndBindings.swift
//  SwiftUIConcept
//
//  Created by Wing Hei Tsui on 31/05/2023.
//

import SwiftUI

struct animations: View {
    var image: Image = Image(systemName: "star")
    @State private var size: Double = 4.0
    
    var body: some View {
        image.scaleEffect(size)
            .onTapGesture {
                size += 1
            }
            .animation(.spring(response: 0.3, dampingFraction: 0.3,blendDuration: 0), value: size)
    }
}

struct stateAndBindings_Previews: PreviewProvider {
    static var previews: some View {
        animations()
    }
}
