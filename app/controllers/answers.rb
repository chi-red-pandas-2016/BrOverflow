post '/answers' do
  p params.inspect
  @answer = Answer.new(params[:answer])
  @answer.question_id = params[:question]
  @answer.user_id = session[:user_id]
  if @answer.save

  else
    @errors = @answer.errors.full_messages
  end
  @question = Question.find(params[:question])
  @answers = Answer.where(question_id: @question.id)
  erb :"/questions/show"
end
