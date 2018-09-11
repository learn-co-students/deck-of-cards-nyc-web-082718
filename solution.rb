class Deck
  @@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  @@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]

  attr_accessor :cards

  def initialize
    @cards = []
    @@suits.each do |suit|
      @@ranks.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    @cards.delete_at(rand(@cards.length - 1))
  end
end

class Card
  @@all = []

  attr_accessor :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
    @@all << self
  end
end
