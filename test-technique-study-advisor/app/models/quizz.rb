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

  def attended_by_user(user)
    quizz_attended = user.attempts.map{|attempt| attempt.quizz}.uniq
    quizz_attended.include?(self)
  end

  def leader_board
    
  end
  
  scope :category, ->(category) { where("categorie = ?", category) }

end
