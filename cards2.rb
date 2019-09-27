class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def output_card
    puts "#{@rank} of #{@suit}"
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

class Deck
  def initialize
    @ranks = [*(2..10), 'J', 'Q', 'K', 'A']
    @suits = ['Clubs', 'Hearts', 'Diamond', 'Spades']
    @cards = []
     
  end 

  def output
     @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end 

  @cards.shuffle!
  end
  

end 

deck = Deck.new
deck.output


