before do
  @errors = Array.new
end

get "/users/new" do
  erb :"/users/new"
end

post "/users" do
  @user = User.new(params[:user])
  if @user.save
    session[:user_id] = @user.id
    redirect :"/"
  else
    @errors = @user.errors.full_messages
    erb :"/users/new"
  end
end

get "/users/:id" do
  if logged_in?
    erb :'/users/show'
  else
    redirect :"/login"
  end
end
