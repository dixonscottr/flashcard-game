before '/*' do
  unless session_user
    session[:username] = 'guest'
  end
end

get '/' do
  redirect '/decks'
end
