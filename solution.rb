class Deck
  attr_reader :cards

  def initialize
    @ranks = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    @suits = ["Hearts","Clubs","Diamonds","Spades"]
    @cards = []
    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(suit,rank)
      end
    end
  end

    def choose_card
      @cards.delete_at(rand(@cards.length))
    end
end

class Card
  attr_reader :rank, :suit

  def initialize(suit,rank)
    @rank = rank
    @suit = suit
  end
end
