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
                .ignoresSafeArea()
            
            VStack {
                Text("Montreal, QC")
                    .font(.system(size: 30,
                                  weight: .bold,
                                  design: .rounded))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                Image(systemName: "cloud.bolt.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180.0,height: 180.0)
                
                Text("24°")
                    .font(.system(size: 40,
                                  weight: .bold,
                                  design: .rounded))
                    .foregroundColor(.white)
                    
                Spacer()
                
                
                
            }
            .padding(.top, 30.0)
        }
    }
}
#Preview {
    ContentView()
}
