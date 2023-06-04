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
    
    @State private var angle: Double = 0
    @State private var color: Color = .blue
    @State private var is_bold: Bool = false

    
    var body: some View {
        VStack {
            image.scaleEffect(size)
                .onTapGesture {
                    size += 1
                }.padding()
                .animation(.spring(response: 0.3,dampingFraction: 0.3,blendDuration: 0), value: size)
            Text("Hello, world!")
                .padding()
                .foregroundColor(color)
                .font(Font.title.weight(is_bold ? Font.Weight.regular : Font.Weight.bold))
                .rotationEffect(.degrees(angle))
                .onTapGesture {
                    angle += 90
                    color = (color == .blue ? .red : .blue)
                    is_bold.toggle()
                } .animation(.easeInOut, value: angle)
        }
    }
}


struct animations_Previews: PreviewProvider {
    static var previews: some View {
        animations()
    }
}
