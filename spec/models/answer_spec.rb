require 'rails_helper'

RSpec.describe Answer, type: :model do
  #associations
  it { should belong_to(:question) }
  
  #validates
  it { should validate_presence_of :body }
end
