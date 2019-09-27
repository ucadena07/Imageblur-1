class Card
  attr_accessor :rank, :suit
  
  def initialize(rank, suit)
      self.rank = rank
      self.suit = suit 
  end 

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end

  def self.random_card
      Card.new(rand(10), :spades)
  end
end

class Deck
  def initialize
      @cards = []
      @cards << Card.new(:spades, :clubs, :diamonds, :hearts)
    
  end 

  def shuffle
      @cards.shuffle!
  end

  def output
    @cards.each do |card|
      card.output_card
    end
  end
end

deck = Deck.new
deck.shuffle
deck.output
