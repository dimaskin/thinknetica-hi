class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable,  and :omniauthable
  devise :database_authenticatable, :registerable, :trackable, 
         :recoverable, :rememberable, :validatable

  has_many :questions, dependent: :destroy
  
  def author?(question)
    question.user_id == id
  end
  
end
