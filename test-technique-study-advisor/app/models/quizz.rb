class Quizz < ApplicationRecord
  DIFFICULTIES =  ["débutant", "confirmé", "expert"]
  CATEGORIES = ["animaux", "archeologie", "art", "bd", "celebrites", "cinema", "culture_generale", "geographie", "gastronomie", "histoire", "litérature", "musique", "nature"]
  # association setting
  
  has_many :questions
  # validation setting
      # name
   validates :name, presence: true, uniqueness: true, length: {maximum: 200}
     # categorie
   validates :categorie, presence: true, inclusion: { in: CATEGORIES,
   message: "%{value} is not a valid category" }
    # difficulty  
    validates :difficulty, presence: true, inclusion: { in: DIFFICULTIES,
    message: "%{value} is not a valid difficulty" }

  # custom methods

  def self.categories
    self.all.map{|quizz| quizz.categorie}.uniq
  end

  def attempted_by_user(user)

    # joins querry from quizz to answer_attempt
    number_of_questions_for_this_quizz = self.questions.count
    querry = Quizz.joins("INNER JOIN questions ON questions.quizz_id = quizzs.id 
                          INNER JOIN answers ON answers.question_id = questions.id 
                          INNER JOIN attempt_answers ON attempt_answers.answer_id = answers.id")
                  .where("quizz_id = ? and attempt_answers.user_id = ?", self.id, user.id) 
    # return 
      #"attempted" if all the questions of the quizz have been submitted (attemp answer) || 
      #"started" if at least one answer have been submitted || 
      #"not started" if no attempt have been recorded for this quizz
    if querry.length > 0
      querry.length == number_of_questions_for_this_quizz ? "attempted" : "started"
    else
      "not-started"
    end
    
  end

  def attempt_score(user)
    if attempted_by_user(user) == "attempted"
      querry = AttemptAnswer.joins("INNER JOIN answers ON answers.id = attempt_answers.answer_id 
                                    INNER JOIN questions ON questions.id = answers.question_id
                                    INNER JOIN quizzs ON quizzs.id = questions.quizz_id").where("quizz_id = ? and attempt_answers.user_id = ?", self.id, user.id) 
      score = (querry.map{|answer| answer.correct? ? 1 : 0 }.sum)/(querry.count)
      return score
    else
      attempted_by_user(user) == "not-started" ? "not-started" : "started"
    end
  end

  def attempt_date(user)
    if attempted_by_user(user) == "attempted"
      querry = AttemptAnswer.joins("INNER JOIN answers ON answers.id = attempt_answers.answer_id 
                                    INNER JOIN questions ON questions.id = answers.question_id
                                    INNER JOIN quizzs ON quizzs.id = questions.quizz_id")
                            .where("quizz_id = ? and attempt_answers.user_id = ?", self.id, user.id) 
      date = querry.last.updated_at
      return date
    else
      attempted_by_user(user) == "not-started" ? "not-started" : "started"
    end
  end


  def last_question_answered_by_user(user)
    querry = AttemptAnswer.joins("INNER JOIN answers ON answers.id = attempt_answers.answer_id 
                                    INNER JOIN questions ON questions.id = answers.question_id
                                    INNER JOIN quizzs ON quizzs.id = questions.quizz_id")
                            .where("quizz_id = ? and attempt_answers.user_id = ?", self.id, user.id) 

    return querry.last.answer.question
  end
  
  
  
  scope :category, ->(category) { where("categorie = ?", category) }

end

