before do
  @errors = Array.new
end


get '/login/new' do
  erb :"/logins/new"
end

post '/login' do
  user = User.find_by(username: params[:user][:username])
  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    @errors << "Invalid Username or Password, BRO!"
    erb :"/logins/new"
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect '/'
end
