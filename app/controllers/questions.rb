get '/questions' do
  @questions = Question.all
  erb :index
end

get '/questions/new' do
  # if user = User.find(session[:user_id])
    erb :"/questions/new"
  # else
  #   redirect '/login'
  # end
end

post '/questions' do
  @question = Question.new(params[:question])
  @question.user_id = session[:user_id]
  if @question.save
    redirect "/questions"
  else
    @errors = @question.errors.full_messages
    erb :'/questions/new'
  end
end

get '/questions/:question_id' do
  @question = Question.find(params[:question_id])
  @answers = Answer.where(question_id: @question.id)
  erb :'/questions/show'
end



