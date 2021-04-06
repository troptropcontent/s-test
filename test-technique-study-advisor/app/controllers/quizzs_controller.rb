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
    @score = @quizz.attempt_score(@user)
    @number_of_questions = @quizz.questions.count
    @propositions_test = ["Proposition 1","Proposition 2","Proposition 3"]
    @quizz_questions = @quizz.questions

    @next_question_url = if @status == "attempted"
                            "/"
                          elsif @status == "started"
                            "/quizzs/#{@quizz.id}/questions/#{@quizz.last_question_answered_by_user(@user).next_question?.id}"
                          else 
                            "/quizzs/#{@quizz.id}/questions/#{@quizz.questions.first.id}"
                         end
  end
  
  
end