//
//  Cards.swift
//  Example
//
//  Created by Elvis Cuevas on 10/29/21.
//

import Foundation

struct Card {
    var name: String
    var description: String
}

class CardModel: ObservableObject {
    @Published var magicCards: [Card] = []
    @Published var threeCards: [Card] = []
    
    func getCards() {
        magicCards.append(Card(name: "rwworld", description: "The World card may be giving you permission to do whatever you want"))
        magicCards.append(Card(name: "rwstar", description: "The Star card reversed suggests that you are temporarily alienated from your brilliance and usefulness"))
        magicCards.append(Card(name: "rwsun", description: "The Sun card advises you to have confidence in your natural divinity"))
        magicCards.append(Card(name: "rwjudgement", description: "The Judgment card advises that you allow yourself to grow, transform, and release hidden potentials within yourself"))
        magicCards.append(Card(name: "rwempress", description: "The Empress advises you to trust in the good sense you have shown up to this point"))
        magicCards.append(Card(name: "rwfool", description: "The Fool advises that you lighten up. Let yourself be spontaneous enough to stretch beyond the realm of logic"))
        magicCards.append(Card(name: "rwemperor", description: "When the Emperor arises, he advises you get in touch with your inner sovereignty and natural self-possession"))
        magicCards.append(Card(name: "rwmagician", description: "Have faith in your innate creativity"))
        magicCards.append(Card(name: "rwhighpriestess", description: "The High Priestess advises you to adhere to your chosen spiritual practice on a more regular basis"))
        magicCards.append(Card(name: "rwhierophant", description: "The Hierophant advises that you return to the role of a meticulous student"))
        magicCards.append(Card(name: "rwlovers", description: "The Lovers card advises that you study your options and make the wisest choice"))
        magicCards.append(Card(name: "rwchariot", description: "The Chariot advises that you be prepared for changes that might include a move or an opportunity to travel"))
        magicCards.append(Card(name: "rwstrength", description: "The Strength card advises that you assertively discipline yourself and separate self interest from enlightened wisdom"))
        magicCards.append(Card(name: "rwwheelfortune", description: "The Wheel of Fortune advises you follow the flow of events"))
        magicCards.append(Card(name: "rwjustice", description: "The Justice card advises you to listen carefully as others explain to you their version of events and the parts they played"))
        magicCards.append(Card(name: "rwhangedman", description: "The Hanged Man advises you to surrender illusions of control"))
        magicCards.append(Card(name: "rwdeath", description: "The Death card advises you to detach from the old order"))
        magicCards.append(Card(name: "rwtemperance", description: "The Temperance card advises you to identify and seek the missing ingredients in your life"))
        magicCards.append(Card(name: "rwdevil", description: "The Devil card advises that you show some spunk"))
        magicCards.append(Card(name: "rwtower", description: "With the Tower card, think of yourself as an agent of transformation"))
        

    }
    
    
    func drawThree() {
        
        let randomIndex1 = Int.random(in: 0..<magicCards.count-1)
        let randomCardOne = magicCards[Int(randomIndex1)]
        magicCards.remove(at: Int(randomIndex1))
        
        let randomIndex2 = Int.random(in: 0..<magicCards.count-1)
        let randomCardTwo = magicCards[Int(randomIndex2)]
        magicCards.remove(at: Int(randomIndex2))
        
        let randomIndex3 = Int.random(in: 0..<magicCards.count-1)
        let randomCardThree = magicCards[Int(randomIndex3)]
        magicCards.remove(at: Int(randomIndex3))
        
        let randomIndex4 = Int.random(in: 0..<magicCards.count-1)
        let randomCardFour = magicCards[Int(randomIndex4)]
        magicCards.remove(at: Int(randomIndex4))
        
        let randomIndex5 = Int.random(in: 0..<magicCards.count-1)
        let randomCardFive = magicCards[Int(randomIndex5)]
        magicCards.remove(at: Int(randomIndex5))
        
        threeCards = [randomCardOne, randomCardTwo, randomCardThree, randomCardFour, randomCardFive]
        getCards()
    }
    
    func clearCards() {
        magicCards.removeAll()
        getCards()
        drawThree()
    }
    
}


