post '/answers' do
  p params.inspect
  @answer = Answer.new(params[:answer])
  @answer.question_id = params[:question]
  @answer.user_id = session[:user_id]
  if @answer.save

  else
    @errors = @answer.errors.full_messages
  end
  redirect "/questions/#{@answer.question.id}"
end

post '/answers/:answer_id/comments' do
  answer = Answer.find(params[:commentable])
  puts '----------------------------'
  comment = answer.comments.new(params[:comment])
  comment.user_id = session[:user_id]
  if comment.save
  else
    @errors = @comment.errors.full_messages
  end
  redirect "/questions/#{answer.question.id}"
end
