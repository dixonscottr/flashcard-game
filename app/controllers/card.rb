get '/decks/:deck_id/cards/:card_id' do
  @deck = Deck.find(params[:deck_id])
  @card = Card.find(params[:card_id])
  erb :'/cards/show'
end

post '/guesses' do
  # Guess.create()

#   if correct
#     move to next page
#   else
#     create new guess
#     redirect /decks/:id/cards/:id
#   end
  "You guessed: #{params[:user_answer]}"
end
