class Deck
  attr_accessor :cards
  def initialize
    @cards = []
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits.each do |s|
      ranks.each do |r|
        @cards << Card.new(s, r)
      end
    end
  end

  def choose_card
    self.cards.shuffle!.pop
  end
end

class Card
  attr_accessor :suit, :rank
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end
