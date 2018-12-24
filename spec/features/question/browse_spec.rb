require 'rails_helper'

feature 'User can browse all question' do
  
  describe 'Authenticated user' do
    given(:questions) { create_list :question, 3 }

    given(:user) { create(:user) }

    scenario 'Can views all questions' do
      visit questions_path

      questions.each do |question|
        expect(page).to have_content(question.title)
      end

    end

  end

  scenario 'Unauthenticated user can views all questions'

end
