# user register page
get '/user/register' do
  erb :'/session/register'
end

post '/user/register' do
  # binding.pry
  new_user = User.new(params)
  if new_user.save
    session["username"] = new_user.username
    redirect '/'
  else
    # error message
    redirect '/user/register'
  end
end

# user log in page
get '/user/login' do
  erb :'/session/login'
end

# user log in
post '/user/login' do
  new_user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
  if new_user
    session["username"] = new_user.username
    redirect '/'
  else
    # error message
    redirect '/user/login'
  end
end

# user log out
delete '/user/login' do
  session["username"] = 'guest'
  redirect '/'
end


get "/user/:username" do

  erb :profile
end
