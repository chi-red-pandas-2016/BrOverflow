post '/votes' do
  if params[:question_id]
    voteable_type = Question.find(params[:question_id])
  else
    voteable_type = Answer.find(params[:answer_id])
  end
  Vote.create(user_id: session[:user_id], voteable: voteable_type, value: params[:vote])
  redirect back
end

put '/votes/:vote_id' do
  vote = Vote.find(params[:vote_id])
  if params[:value] != vote.value
    vote.update_attribute(:value, params[:vote])
  end
  redirect back
end
