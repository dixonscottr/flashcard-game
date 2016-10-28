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
  @next_card = (@card.id + 1)
  @guess = Guess.create(round: @round)
  if params[:user_answer].downcase == @card.answer.answer.downcase
    @guess.answer = @card.answer
    redirect "/rounds/#{@round.id}/decks/#{@deck.id}/cards/#{@next_card}"
  else
    redirect "/rounds/#{@round.id}/decks/#{@deck.id}/cards/#{@card.id}"
  end
end
