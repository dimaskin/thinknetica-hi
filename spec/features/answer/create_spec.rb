require 'rails_helper'

feature 'Create answer for question' do

  given(:user) { create :user }
  given(:question) { create :question, author: user}

  describe 'Authenticated user' do

    scenario 'can create answer' do
      sign_in(user)
      visit question_path(question)
      fill_in 'Your answer', with: 'text text text'
      click_on 'Answer'

      expect(page).to have_content 'Your answer successfully created'
      expect(page).to have_content 'text text text'
    end

    scenario 'non-author tries to create a answer'
    scenario 'user tries to create a invalid answer'
  end

  scenario 'Non-authenticated user ties user create answer'
end