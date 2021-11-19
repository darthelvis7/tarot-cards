//
//  DailySpreadView.swift
//  Example
//
//  Created by Elvis Cuevas on 10/23/21.
//

import SwiftUI

struct DailySpreadView: View {
   
    @ObservedObject var model: CardModel = CardModel()
    
    @State var displayInfo = false
    @State private var cardHidden = false
    var body: some View {
        ZStack {
            
            
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .bottom, endPoint: .top)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Spacer()
                Text("Daily Card Spread")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                    .frame(width: 400, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                        .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.red]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                        .shadow(color: .black, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Button(action: {
                            self.displayInfo.toggle()
                        }, label: {
                            Image(systemName: "info.circle.fill")
                                .foregroundColor(Color.white)
                                
                                .font(.system(size: 27))
                                
                        }
                    )
                        
                        , alignment: .bottomTrailing)
                   
                
                Spacer()
                ZStack {
                        Image("card")
                            .resizable()
                            .frame(width: 200.0, height: 300.0, alignment: .center)
                            .padding()
                            .background(Color.red)
                            .padding(.top, 75)
                    if cardHidden {
                        
                                Image(model.threeCards[0].name)
                                .resizable()
                                    .frame(width: 200.0, height: 300.0, alignment: .center)
                                .padding()
                                .background(Color.red)
                                .padding(.top, 75)
                    }
                   
                }
                if cardHidden {
                        Text(model.threeCards[0].description)
                            .font(.headline)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 200.0, height: 150.0, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                } else {
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                            .frame(width: 200.0, height: 150.0, alignment: .center)
                }
               Spacer()
        
                Button(action: {
                    self.cardHidden.toggle()
                    model.clearCards()
                }, label: {
                    Text(cardHidden ? "Shuffle": "Draw")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 125, height: 75)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.red]), startPoint: .bottom, endPoint: .top))
                        .cornerRadius(12)
                })
            }
            .padding()
            if displayInfo {
                Text("A single card can represent anything you want it to mean.")
                    
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.black)
                    .padding(.bottom, 460.0)
                    
                    
            }
        }
    }
}


struct DailySpreadView_Previews: PreviewProvider {
    static var previews: some View {
        DailySpreadView()
    }
}
