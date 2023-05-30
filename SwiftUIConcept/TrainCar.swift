//
//  TrainCar.swift
//  SwiftUIConcept
//
//  Created by Wing Hei Tsui on 26/05/2023.
//

import SwiftUI

enum TrainSymbol: String {
    case front = "train.side.front.car"
    case middle = "train.side.middle.car"
    case rear = "train.side.rear.car"
}



struct TrainCar: View {
    
    let position: TrainSymbol
    let showFrame: Bool
    
    init(_ position: TrainSymbol, showFrame: Bool = true) {
        self.position = position
        self.showFrame = showFrame
    }
    
    var body: some View {
        Image(systemName: position.rawValue)
            .background(Color(.systemPink))
    }
}

struct TrainTrack: View {
    var body: some View {
        Divider()
            .frame(maxWidth: 200)
    }
}
struct TrainCar_Previews: PreviewProvider {
    static var previews: some View {
        TrainCar(.front)
    }
}
