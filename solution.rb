class Deck
  attr_reader :cards

  def initialize
    @cards = []
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    ranks.each do |rank|
      suits.each do |suit|
        @cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    @cards.delete(@cards[rand(0..51)])
  end

end

class Card
  attr_reader :rank, :suit

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end
end
