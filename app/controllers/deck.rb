get '/decks' do
  @decks = Deck.all
  erb :'/decks/show'
end

