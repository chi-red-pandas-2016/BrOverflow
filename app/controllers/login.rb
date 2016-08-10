before do
  @errors = Array.new
end


get '/login/new' do
  erb :"/logins/new"
end

post '/login' do
end

get '/logout' do
end
