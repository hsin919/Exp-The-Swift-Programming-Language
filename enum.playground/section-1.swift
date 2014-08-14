// Playground - noun: a place where people can play

import UIKit

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    case Count
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
    func isSmallerThan(other: Rank) -> Bool {
        return self.toRaw() < other.toRaw()
    }
}

let ace = Rank.Ace

let aceRawValue = ace.toRaw()

ace.simpleDescription()

let Jack = Rank.Jack

if ace.isSmallerThan(Rank.Jack)
{
    println("\(ace.simpleDescription()) is smaller than \(Jack.simpleDescription())")
}

enum Suit: Int {
    case Spades, Hearts, Diamonds, Clubs
    case Count
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        default:
            return "undefined"
        }
    }
    func color() ->String {
        switch self {
        case .Spades:
            return "black"
        case .Clubs:
            return "black"
        case .Hearts:
            return "red"
        case .Diamonds:
            return "red"
        default:
            return "undefined"
        }
    }
}

let heart = Suit.Hearts
heart.color()


var tt = "test"
if let convertRank = Rank.fromRaw(1) {
    tt = convertRank.simpleDescription()
} else {
    tt = "test2"
}

tt

struct Card {
    var rank: Rank
    var suit: Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
    
    static func fullDeck() -> [Card] {
        var deck = [Card]()
        var rankNumber :Int = Rank.Count.toRaw()
        for number in 0...rankNumber - 1{
            if let convertRank = Rank.fromRaw(number) {
                var colorNumber :Int = Suit.Count.toRaw()
                for color in 0...colorNumber - 1 {
                    if let ConvertColor = Suit.fromRaw(color) {
                        let card = Card(rank: convertRank, suit: ConvertColor)
                        deck.append(card)
                    }
                }
            }
        }
        return deck
    }
}

let deck = Card.fullDeck()

for card in deck {
    println("card: \(card.rank.simpleDescription()) \(card.suit.simpleDescription())")
}
