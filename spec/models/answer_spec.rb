require 'rails_helper'

RSpec.describe Answer, type: :model do
  #associations

  #validates
  it { should validate_presence_of :body }
end
