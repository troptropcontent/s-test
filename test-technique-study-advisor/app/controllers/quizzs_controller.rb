class QuizzsController < ApplicationController
  def index
    @categories = Quizz.categories
    @quizzs = Quizz.all
    @user = current_user
  end

  def show
    raise
    @quizz = Quizz.find(
    params[:id]
    )
    @quiz_taken_by_current_user = @quizz.attended_by_user(current_user)
  end
  
  
end