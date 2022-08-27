include '.pry'

rank_values = [2, 3, 4, 5, 6, 7, 8, 9, 10]

diamonds = []
hearts = []
spades = []
clubs = []

full_deck_cards = []


rank_values.each do |rank_value|

    diamonds << Card.new(:diamond, "#{rank_value}", rank_value)

    hearts << Card.new(:heart, "#{rank_value}", rank_value)

    spades << Card.new(:spade, "#{rank_value}", rank_value)

    clubs << Card.new(:club, "#{rank_value}", rank_value)
    
end

def create_high_value(suits, suit)

    suits << Card.new(suit, "Jack", 11)
    suits << Card.new(suit, "Queen", 12)
    suits << Card.new(suit, "King", 13)
    suits << Card.new(suit, "Ace", 14)

end

create_high_value(diamonds, :diamond)
create_high_value(hearts, :heart)
create_high_value(spades, :spade)
create_high_value(clubs, :club)


full_deck_cards = diamonds + hearts + spades + clubs
full_deck_cards = full_deck_cards.shuffle
half_deck_1 = []
half_deck_2 = []


26.times do
    half_deck_1 << full_deck_cards.shift
end

26.times do
    half_deck_2 << full_deck_cards.shift
end

deck_1 = Deck.new(half_deck_1)
deck_2 = Deck.new(half_deck_2)

player1 = Player.new("Mufasa", deck_1)
player2 = Player.new("Skar", deck_2)

game = Game.new(player1, player2)


