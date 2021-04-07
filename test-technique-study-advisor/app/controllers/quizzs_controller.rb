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
    @status = @quizz.attempted_by_user(@user)

    if @status == "attempted"
      @next_question_url = "/"
      @submission_date = @quizz.attempt_date(@user).strftime("%m/%d/%Y")
      @score = @quizz.attempt_score(@user)
    elsif @status == "started"
      @next_question_url = "/quizzs/#{@quizz.id}/questions/#{@quizz.last_question_answered_by_user(@user).next_question?.id}"
    else 
      @propositions_test = ["Proposition 1","Proposition 2","Proposition 3","Proposition 4"]
      @number_of_questions = @quizz.questions.count
      @next_question_url = "/quizzs/#{@quizz.id}/questions/#{@quizz.questions.first.id}"
    end


  end
  
  
end