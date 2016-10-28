# binding.pry

before '/*' do
  unless session_user
    session["username"] = 'guest'
  end
end

get '/' do
  # binding.pry
  redirect '/decks'
end
