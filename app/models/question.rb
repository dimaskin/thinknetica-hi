class Question < ApplicationRecord
  #associations

  
  #validates
  validates :title, :body, presence: true
end
