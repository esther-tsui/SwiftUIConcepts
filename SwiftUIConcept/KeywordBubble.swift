//
//  SwiftUIView.swift
//  SwiftUIConcept
//
//  Created by Wing Hei Tsui on 25/05/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                Circle()
                    .foregroundColor(.secondary)
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .foregroundColor(.green)
            } .aspectRatio(3.0, contentMode: .fit)
            //end of HStack
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
            Text("by Esther")
                .font(.caption.italic())
//                .italic()
            //

//            Spacer()
            HStack {
                Image(systemName: "folder.badge.plus")
//                    .resizable()
//                    .scaledToFit()
                Image(systemName: "heart.circle.fill")
                Image(systemName: "alarm")
            } .symbolRenderingMode(.multicolor)
                .font(.largeTitle)
            //end of HStack
            
            Label("Favorite Books", systemImage: "books.vertical")
                .labelStyle(.titleAndIcon)
                .font(.largeTitle)
            AsyncImage(url: URL(string: "https://images.app.goo.gl/HtHsuyyVNACEjSaeA")) { image in
                image.resizable()
            }
        placeholder: {
            ProgressView()
        }
                .frame(width: 50, height: 50)
        
        } //end of VStack

    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
