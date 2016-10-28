get '/rounds/:round_id/decks/:deck_id/cards/:card_id' do
  # binding.pry
  @round = Round.find(params[:round_id])
  @deck = Deck.find(params[:deck_id])
  @card = Card.find(params[:card_id])
  erb :'/cards/show'
end

post '/guesses' do
  @round = Round.find(params[:round_id])
  Guess.create(round: @round)

#   if correct
#     move to next page
#   else
#     create new guess
#     redirect /decks/:id/cards/:id
#   end
  "You guessed: #{params[:user_answer]}"
end
