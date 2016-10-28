post '/rounds' do
  @deck = Deck.find(params[:deck_id])
  @round = Round.create(user: session_user, deck: @deck)
  redirect "/rounds/#{@round.id}/decks/#{@deck.id}/cards/1"
end

get '/rounds/:round_id' do
  @round = find_round(params[:round_id])
  erb :'rounds/show'
end
