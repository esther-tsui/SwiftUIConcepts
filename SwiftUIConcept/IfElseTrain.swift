//
//  IfElseTrain.swift
//  SwiftUIConcept
//
//  Created by Wing Hei Tsui on 25/05/2023.
//

import SwiftUI

struct IfElseTrain: View {
    
    var longerTrain: Bool
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "train.side.rear.car")
                if longerTrain {
                    Image(systemName: "train.side.middle.car")
                        .opacity(1)
                } else {
                    Image(systemName: "train.side.middle.car")
                        .opacity(0)

                }
                /*can also write it as:                     Image(systemName: "train.side.middle.car")
                    .opacity(longerTrain ? 1 : 0)
                 */

                Image(systemName: "train.side.front.car")
            }
        }
//        Divider()
        //Divider() is an empty view to seperate different previews
    }
}

struct IfElseTrain_Previews: PreviewProvider {
    static var previews: some View {
        
        IfElseTrain(longerTrain: true)
        IfElseTrain(longerTrain: false)
    }
}
