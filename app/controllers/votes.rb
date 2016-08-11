post '/votes' do
  question = Question.find(params[:question_id])
  Vote.create(user_id: session[:user_id], voteable: question, value: params[:vote])
  redirect '/questions'
end

put '/votes/:vote_id' do
  vote = Vote.find(params[:vote_id])
  if params[:value] != vote.value
    vote.update_attribute(:value, params[:vote])
  end
  redirect '/questions'
end
