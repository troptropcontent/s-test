class Api::V1::AttemptAnswersController < ApplicationController
  def create
    # the idea is to send back JSON with the correct answer to the question and the link to redirect to, 
    answer_id = attempt_params[:id]
    answer = Answer.find(answer_id)
    user = current_user
    new_attempt = AttemptAnswer.create({answer: answer, user: user})
    # redirect to the show of the next question of the quizz
    next_question = answer.question.next_question?
    if next_question
      # redirect to the next question show
      content = {
        correct_answer: answer.question.correct_answer,
        anecdote: answer.question.anecdote,
        path_to_redirect_to: quizz_question_path(quizz_id: next_question.quizz.id, id: next_question.id)
      }

      render json: content.to_json
    else
      # redirect to the quizz_show
      content = {
        correct_answer: answer.question.correct_answer,
        anecdote: answer.question.anecdote,
        path_to_redirect_to: quizzs_path(id: answer.question.quizz.id)
      }

      render json: content.to_json
    end
  end

  private

  def attempt_params
    params.require(:attempt_answer).permit(:id)
  end
end
