//
//  ContentView.swift
//  SwiftUI_test1
//
//  Created by Ali Tezel on 2023-10-06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.white]), startPoint: /*@START_MENU_TOKEN@*/.topLeading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Weather")
                    .font(.system(size: 40,
                                  weight: .bold,
                                  design: .rounded))
                    .foregroundStyle(.white)
                Spacer()
                
                
                
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
