get '/rounds/:round_id/decks/:deck_id/cards/:card_id' do
  # binding.pry
  @round = find_round(params[:round_id])
  @deck = find_deck(params[:deck_id])
  @card = find_card(params[:card_id])
  erb :'/cards/show'
end

post '/guesses' do
  @round = find_round(params[:round_id])
  @deck = find_deck(params[:deck_id])
  @card = find_card(params[:card_id])
  Guess.create(round: @round)

#   if correct
#     move to next page
#   else
#     create new guess
    redirect "/rounds/#{@round.id}/decks/#{@deck.id}/cards/#{@card.id}"
#   end
  "You guessed: #{params[:user_answer]}"
end
