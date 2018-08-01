require 'pry'


@deck = {

			"hearts" => [ "A" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5],
			"clubs" =>  [ "A" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5],
			"diamonds" => [ "A" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5],
			"spades" => [ "A" => 1, "2" => 2, "3" => 3, "4" => 4, "5" => 5],
		}


#Shuffle the deck

#select five cards

def shuffle

	@deck.values[0][0].keys.shuffle!
	@deck.values[1][0].keys.shuffle!
	@deck.values[2][0].keys.shuffle!
	@deck.values[3][0].keys.shuffle!

	binding.pry
end

shuffle

p @deck