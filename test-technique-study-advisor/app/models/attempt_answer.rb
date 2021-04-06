class AttemptAnswer < ApplicationRecord
  belongs_to :answer
  belongs_to :user

  def quizz
    self.answer.question.quizz
  end

  def correct?
    self.answer.correct
  end
  
end
