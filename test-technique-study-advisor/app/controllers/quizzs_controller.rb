class QuizzsController < ApplicationController
  def index
    @categories = Quizz.categories
    @quizzs = Quizz.all
    @user = current_user
  end

  def show
    @quizz = Quizz.find(
    params[:id]
    )
    @user = current_user
    @number_of_questions = @quizz.questions.count
    @quiz_taken_by_current_user = @quizz.attended_by_user(current_user)
    @propositions_test = ["Proposition 1","Proposition 2","Proposition 3"]
    @quizz_questions = @quizz.questions
    @next_question_url = "/quizzs/#{@quizz.id}/questions/#{@quizz_questions.first.id}"
  end
  
  
end