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
            
            //TOP Element with the city name, cloud and temperature
            VStack {
                Text("Montreal, QC")
                    .font(.system(size: 30,
                                  weight: .bold,
                                  design: .rounded))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.top, 12.0)
                    .foregroundStyle(.white)
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, -40.0)
                    .frame(width: 180.0,height: 180.0)
                
                Text("24°")
                    .font(.system(size: 40,
                                  weight: .bold,
                                  design: .rounded))
                    .foregroundColor(.white)
                    .padding(.top, -50.0)
                
                Spacer()
             //END top element
            }
            
            HStack {
                
                VStack{
                    Text("MON")
                        .font(.system(size: 16,
                                      weight: .bold,
                                      design: .rounded))
                        .foregroundStyle(.white)
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60, height: 60)
                    Text("22°")
                        .font(.system(size: 24,
                                      weight: .bold,
                                      design: .rounded))
                        .foregroundColor(.white)
                    
                    
                    
                    
                    
                    
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
            
            
                
                
