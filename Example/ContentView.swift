//
//  ContentView.swift
//  Example
//
//  Created by Elvis Cuevas on 10/18/21.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
    
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.black]), startPoint: .top, endPoint: .trailing)
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack {
                    VStack {
                        Text("Tarot Readings")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: 80)
                            
                            .background(LinearGradient(gradient: Gradient(colors: [Color.gray, Color.black]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                            
                        
                            Spacer()
                            Image("logo")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 200, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .clipShape(Circle())
                                            .shadow(radius: 10)
                         Spacer()
                        
                    }
                    NavigationLink(
                        destination: DailySpreadView(),
                        label: {
                            Text("Daily Spread")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                
                                .multilineTextAlignment(.center)
                                .frame(width: 200, height: 75)
                                .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.red]), startPoint: .bottom, endPoint: .top))
                                .cornerRadius(12)
                        })
                        .padding()
                    NavigationLink(
                        destination: NewThreeCardView(),
                        label: {
                            Text("Three Card Spread")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                
                                .multilineTextAlignment(.center)
                                .frame(width: 200, height: 75)
                                .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.red]), startPoint: .bottom, endPoint: .top))
                                .cornerRadius(12)
                                
                        })
                        .padding()
                    NavigationLink(
                        destination: CrossSpread(),
                        label: {
                            Text("Cross Spread")
                                .font(.title)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                                
                                .multilineTextAlignment(.center)
                                .frame(width: 200, height: 75)
                                .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.red]), startPoint: .bottom, endPoint: .top))
                                .cornerRadius(12)
                        })
                        .padding()
                   
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
