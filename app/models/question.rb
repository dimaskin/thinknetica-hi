class Question < ApplicationRecord
  has_many :answers, dependent: :destroy
  #belongs_to :author, class_name: 'User', foreign_key: :user_id
  belongs_to :user
  validates :title, :body, presence: true
end
