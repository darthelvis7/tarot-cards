//
//  CrossSpread.swift
//  Example
//
//  Created by Elvis Cuevas on 11/13/21.
//

import SwiftUI

struct CrossSpread: View {
    @ObservedObject var model: CardModel = CardModel()

    @State private var cardHidden = false
    @State private var displayInfo = false
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.red, Color.black]), startPoint: .bottom, endPoint: .top)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                
                Text("Five Card Cross Spread")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                    .frame(width: 420, height: 75)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.orange, Color.red]), startPoint: .bottom, endPoint: .top))
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
                // start
                Spacer()
                
                ZStack {
                    VStack {
                        Image("card")
                            .resizable()
                            .frame(width: 115.0, height: 200.0)
                        HStack {
                            Image("card")
                                .resizable()
                                .frame(width: 115.0, height: 200.0)
                               
                            Image("card")
                                .resizable()
                                .frame(width: 115.0, height: 200.0)
                              
                            Image("card")
                                .resizable()
                                .frame(width: 115.0, height: 200.0)
                                
                        }
                        Image("card")
                            .resizable()
                            .frame(width: 115.0, height: 200.0)
                    }
                    
                    
                    if cardHidden {
                        VStack {
                            Image(model.threeCards[0].name)
                                .resizable()
                                .frame(width: 115.0, height: 200.0)
                            HStack {
                                Image(model.threeCards[1].name)
                                    .resizable()
                                    .frame(width: 115.0, height: 200.0)
                                   
                                Image(model.threeCards[2].name)
                                    .resizable()
                                    .frame(width: 115.0, height: 200.0)
                                  
                                Image(model.threeCards[3].name)
                                    .resizable()
                                    .frame(width: 115.0, height: 200.0)
                                    
                            }
                            Image(model.threeCards[4].name)   .resizable()
                                .frame(width: 115.0, height: 200.0)
                        }
                            
                    }
                }
                // end
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
                Text("This five card relationship Tarot spread can give great insight into the dynamics and issues in a romantic relationship.")
                    
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.black)
                    .padding(.bottom, 500.0)
                
                    
            }
        }
    }
}

struct CrossSpread_Previews: PreviewProvider {
    static var previews: some View {
        CrossSpread()
    }
}
