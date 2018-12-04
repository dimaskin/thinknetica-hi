class Question < ApplicationRecord
  #associations
  has_many :answers
  
  #validates
  validates :title, :body, presence: true
end
