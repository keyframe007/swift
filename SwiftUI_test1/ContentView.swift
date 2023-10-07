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
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color("lightBlue")]), startPoint: /*@START_MENU_TOKEN@*/.topLeading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
            
            //TOP Element
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
            .padding(.top, 100.0)
            
            //MID element
            HStack (spacing:15){
                
                WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 13)
                WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.fill", temperature: 23)
                WeatherDayView(dayOfWeek: "WED", imageName: "cloud.fill", temperature: 19)
                WeatherDayView(dayOfWeek: "THU", imageName: "cloud.sun.fill", temperature: 27)
                WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temperature: 32)
                
            //END mid element
            }
            
            Button {
                print("tap")
            } label: {
                Text("Change Day Time")
                    .frame(width: 280, height: 50)
                    .background(Color.buttonBG)
                    .font(.system(size: 30,
                                  design: .rounded))
                    .bold()
                    .foregroundStyle(.white)
                    
            }
            .padding(.top, 600.0)
            
        }
    }
}
#Preview {
    ContentView()
}
            
            
                
                

struct WeatherDayView: View {
    
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    
    var body: some View {
        VStack{
            
            Text(dayOfWeek)
                .font(.system(size: 16,
                              weight: .bold,
                              design: .rounded))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            Text("\(temperature)°")
                .font(.system(size: 24,
                              weight: .bold,
                              design: .rounded))
                .foregroundColor(.white)
            
            
            
            
            
            
            
            
        }
        .padding(.top, 200.0)
    }
}
