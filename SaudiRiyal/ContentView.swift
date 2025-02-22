//
//  ContentView.swift
//  SaudiRiyal
//
//  Created by Raouf on 22/02/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image("Saudi_Riyal_Symbol")
                    .imageScale(.large)
                    .foregroundStyle(.black)
                Text("1200.20")
                    .font(.largeTitle)
            }
            Divider()
            HStack {
                Image("Saudi_Riyal_Symbol.circle")
                    .font(.title)
                    .foregroundStyle(.black)
                Text("1200.20")
                    .font(.largeTitle)
            }
            Divider()
            Text("New Saudi Riyal Symbol")
                .fontWeight(.bold)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
