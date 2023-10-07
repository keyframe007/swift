//
//  ContentView.swift
//  SwiftUI_test1
//
//  Created by Ali Tezel on 2023-10-06.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            LinearGradientBackgroundView(topColor: isNight ? .black : .blue, bottomColor: isNight ? .gray : .lightBlue)
            
            
            VStack {
                
                CityNameView(cityName: "Montreal, QC", fontSize: 30, foregroundColor: .white)
                TodaysWeatherImage(imageName: isNight ? "cloud.fill" : "cloud.sun.fill", width: isNight ? 130 : 180, height: 180)
                TodayTemperatureView(temperature: 32, textSize: 40, foregroundColor: .white)
                
                Spacer()
                
            }
            .padding(.top, 100.0)
            
            HStack (spacing:15){
                
                WeatherDayView(dayOfWeek: "MON", imageName: "cloud.sun.fill", temperature: 13)
                WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.fill", temperature: 23)
                WeatherDayView(dayOfWeek: "WED", imageName: "cloud.fill", temperature: 19)
                WeatherDayView(dayOfWeek: "THU", imageName: "cloud.sun.fill", temperature: 27)
                WeatherDayView(dayOfWeek: "FRI", imageName: "cloud.sun.fill", temperature: 32)
                
            }
            
            Button {
                isNight.toggle()
            } label: {
                Text(isNight ? "Change to Day" : "Change to Night")
                    .frame(width: 280, height: 50)
                    .background(isNight ? .gray : .buttonBG)
                    .font(.system(size: 30,
                                  design: .rounded))
                    .bold()
                    .foregroundStyle(.white)
                    .cornerRadius(10)
                    
                
            }
            .padding(.top, 600.0)
            
        }
    }
}
#Preview {
    ContentView()
}


// STRUCT SEPARATED VIEWS BELOW THIS LINE/////////////////////////////////

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

struct LinearGradientBackgroundView: View {
    
    var topColor: Color
    var bottomColor: Color
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: /*@START_MENU_TOKEN@*/.topLeading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottomTrailing/*@END_MENU_TOKEN@*/)
            .ignoresSafeArea()
    }
}

struct CityNameView: View {
    
    var cityName: String
    var fontSize: CGFloat
    var foregroundColor: Color
    
    var body: some View {
        Text(cityName)
            .font(.system(size: fontSize,
                          weight: .bold,
                          design: .rounded))
            .foregroundColor(foregroundColor)
            .multilineTextAlignment(.center)
            .padding(.top, 12.0)
            .foregroundStyle(.white)
    }
}

struct TodaysWeatherImage: View {
    
    var imageName: String
    var width: CGFloat
    var height: CGFloat
    
    var body: some View {
        Image(systemName: imageName)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .padding(.top, -40.0)
            .frame(width: width,height: height)
    }
}

struct TodayTemperatureView: View {
    
    var temperature: Int
    var textSize: CGFloat
    var foregroundColor: Color
    
    var body: some View {
        Text("\(temperature)°")
            .font(.system(size: textSize,
                          weight: .bold,
                          design: .rounded))
            .foregroundColor(foregroundColor)
            .padding(.top, -50.0)
    }
}

                
                

            
            
            
            
            
            


                
                
