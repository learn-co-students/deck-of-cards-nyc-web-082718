require 'pry'
class Deck

  @@cards = []
  def initialize
    # binding.pry
    @@cards = generate_all_cards
    # binding.pry
  end

  def generate_all_cards
    ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    cards_array = []
    ranks.each do |rank|
      suits.each do |suit|
        card = Card.new(suit, rank)
        cards_array << card
      end
    end
    cards_array
  end

  def cards
    @@cards
  end

  def choose_card
    self.cards.shift
  end


end

class Card
  attr_accessor :rank, :suit
  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end
end
