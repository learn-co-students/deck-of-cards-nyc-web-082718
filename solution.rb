require 'pry'

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
    card = @cards.sample
    @cards.delete(card)
    card
  end

end

class Card

  attr_reader :rank, :suit


  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end

  def self.all

  end

end



# deck = Deck.new
# c1 = Card.new("Hearts", "A")
#
# binding.pry
