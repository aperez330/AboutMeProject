//
//  ContentView.swift
//  AboutMeProject
//
//  Created by scholar on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var fact = ""
    @State private var click = "Facts About Me:"
    var body: some View {
        ZStack {
            Color(.systemMint)
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 100.0){
                Image("curiosity")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                VStack(spacing: 10.0){
                    Text("Alexandra")
                        .font(.title)
                    Text(click)
                    Button("Click Me") {
                        click = "I'm a very curious person"
                    }
                }
            }
            .padding()
            .background(Rectangle()
                .cornerRadius(10)
                .shadow(radius:15)
                .foregroundColor(.white))
            .padding()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
