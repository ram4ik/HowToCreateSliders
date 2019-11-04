//
//  ContentView.swift
//  HowToCreateSliders
//
//  Created by ramil on 04.11.2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentValue = 0.4
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "heart")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.red)
                Slider(value: $currentValue, in: 0...10)
                    .accentColor(.red)
                    .padding()
                Image(systemName: "heart.fill")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.red)
            }
            .padding()
            Text("Current value: \(Int(currentValue))")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
