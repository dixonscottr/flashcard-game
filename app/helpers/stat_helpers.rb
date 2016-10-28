def number_of_guesses(current_round)
  current_round.guesses.length
end

def number_of_cards(current_deck)
  current_deck.cards.length
end

def number_of_first_guesses(guesses)
  answers_array = guesses.pluck(:answer_id)
  answers_array.select do |answer|
    answers_array.count(answer) == 1
  end.length

end
