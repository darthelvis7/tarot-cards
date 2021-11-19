//
//  NewThreeCardView.swift
//  Example
//
//  Created by Elvis Cuevas on 10/25/21.
//

import SwiftUI




struct NewThreeCardView: View {
    
    
    @ObservedObject var model: CardModel = CardModel()

    @State private var cardHidden = false
    @State private var displayInfo = false
    
    var body: some View {
       
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.green, Color.black]), startPoint: .bottom, endPoint: .top)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                    Spacer()
                    Text("Three Card Spread")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .frame(width: 400, height: 80)
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
                        .padding()
                        .background(Color.red)
                        
                        if cardHidden {
                                HStack {
                                    Image(model.threeCards[0].name)
                                    .resizable()
                                        .frame(width: 115.0, height: 200.0)
                                    Image(model.threeCards[1].name)
                                    .resizable()
                                        .frame(width: 115.0, height: 200.0)
                                    Image(model.threeCards[2].name)
                                    .resizable()
                                        .frame(width: 115.0, height: 200.0)
                            }
                        }
                        
                        
                    }
                    if cardHidden {
                    
                    HStack {
                        Text(model.threeCards[0].description)
                            .font(.caption)
                            .foregroundColor(Color.yellow)
                            .multilineTextAlignment(.center)
                            .frame(width: 115, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text(model.threeCards[1].description)
                            .font(.caption)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.center)
                            .frame(width: 115, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        Text(model.threeCards[2].description)
                            .font(.caption)
                            .foregroundColor(Color.pink)
                            .multilineTextAlignment(.center)
                            .frame(width: 115, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                    } else {
                        HStack {
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                                .frame(width: 115, height: 150)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                                .frame(width: 115, height: 150)
                            Image(systemName: "star.fill")
                                .foregroundColor(Color.yellow)
                                .frame(width: 115, height: 150)
                        }
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
                Text("The Past, Present, and Future")
                    
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding()
                    .background(Color.black)
                    .padding(.bottom, 375.0)
                    
                    
            }
            
        }
        
    }
}

struct NewThreeCardView_Previews: PreviewProvider {
    static var previews: some View {
        NewThreeCardView(model: CardModel())
    }
}
