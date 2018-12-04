require 'rails_helper'

RSpec.describe Question, type: :model do
  #associations
  it { should have_many(:answers) }

  #validates
  it { should validate_presence_of :title }
  it { should validate_presence_of :body }
end
