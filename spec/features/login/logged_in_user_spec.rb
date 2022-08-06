require 'rails_helper'
require 'helpers/model_helper'

RSpec.feature 'Login Page' do
  feature 'shows login' do
    background do
      visit new_user_session_path
      @user1 = User.create(name: 'Ben', email: 'ben@gmail.com', password: '123456')
      within 'form' do
        fill_in 'Email', with: @user1.email
        fill_in 'Password', with: @user1.password
      end
    end

    scenario 'shows foods link after user login' do
      expect(page).to have_content('foods')
    end
  end
end
