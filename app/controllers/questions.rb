get '/questions' do
  @questions = Question.all
  erb :index
end

get '/questions/:question_id' do
  @question = Question.find(params[:question_id])
  @answers = Answer.where(question_id: @question.id)
  erb :'/questions/show'
end
