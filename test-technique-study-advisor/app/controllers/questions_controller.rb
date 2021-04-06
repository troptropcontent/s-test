class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @propositions = @question.answers
    @post_attempt_url = "/atempts"
  end
  
end
