class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @propositions = @question.answers
    @new_attempt = AttemptAnswer.new
  end
  
end
