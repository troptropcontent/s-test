class AttemptAnswersController < ApplicationController
  def create
    answer_id = attempt_params[:id]
    answer = Answer.find(answer_id)
    user = current_user
    new_attempt = AttemptAnswer.create({answer: answer, user: user})
    # redirect to the show of the next question of the quizz
    next_question = answer.question.next_question?
    if next_question
      # redirect to the next question show
      redirect_to quizz_question_path(quizz_id: next_question.quizz.id, id: next_question.id)
    else
      # redirect to the quizz_show
      redirect_to answer.question.quizz
    end
  end
  
  private

  def attempt_params
    params.require(:attempt_answer).permit(:id)
  end
end
