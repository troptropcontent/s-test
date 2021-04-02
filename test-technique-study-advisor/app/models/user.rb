class User < ApplicationRecord
  # associations setting
  has_many :attempts
  # validation setting
    # last_name
  validates :last_name, presence: true
    # first_name 
  validates :first_name, presence: true
    # email
  validates :email, presence: true
  validates :email, format: { with: /\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b/,
      message: "only allows letters" }
    # username
  validates :username, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
