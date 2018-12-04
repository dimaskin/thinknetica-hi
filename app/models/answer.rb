class Answer < ApplicationRecord
  #associations
  belongs_to :question
  
  #validates
  validates :body, presence: true
end
