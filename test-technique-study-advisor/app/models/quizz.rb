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

end
