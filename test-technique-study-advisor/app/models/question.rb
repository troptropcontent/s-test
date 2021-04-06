class Question < ApplicationRecord
  has_many :answers
  belongs_to :quizz

  def next_question?
    quizz_questions = self.quizz.questions
    if quizz_questions.last == self
      return false
    else
      # transform the list of questions into an array like [index-question-1, index-question-2, index-question-3] to know wich question is next
      array = quizz_questions.map{|question| question.id}
      # finding the index of the current question
      index_of_the_current_question = array.index(self.id)
      # find the array of the next quyestion by adding 1 to the current index
      return Question.find(array[index_of_the_current_question+1])
    end
  end

  
  
end
