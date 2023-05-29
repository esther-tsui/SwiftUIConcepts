//
//  Event.swift
//  SwiftUIConcept
//
//  Created by Wing Hei Tsui on 25/05/2023.
//

import SwiftUI

struct EventContent {
    let title: String
    let date: Date
    let location: String
    let symbol: String
}

struct Event: View {
    
    let event: EventContent
    let stripeHeight = 15.0
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: event.symbol)
                .font(.title)
            VStack(alignment: .leading) {
                Text(event.title)
                    .font(.title)
                Text(event.date, format: Date.FormatStyle()
                    .day(.defaultDigits)
                    .month(.wide)
                )
                Text(event.location)
            }
            .padding()
            .padding(.top, stripeHeight)
            .background{
                ZStack(alignment: .top){
                    Rectangle()
                        .opacity(0.3)
                    Rectangle()
                        .frame(maxHeight: stripeHeight)
                }
            } .foregroundColor(.teal)
        }.clipShape(RoundedRectangle(cornerRadius: stripeHeight, style: .continuous))
    }
    
}

struct Event_Previews: PreviewProvider {
    static var event = EventContent(title: "Buy Daisies", date: .now, location: "Flower Shop", symbol: "gift")
    
    static var previews: some View {
        Event(event: event)
    }
}
