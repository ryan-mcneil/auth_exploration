require 'rails_helper'

describe 'a user links from index page' do
  describe 'they fill in name, email, and password' do
    it 'creates a new user' do


      visit new_user_path

      # click_link "New User"

      # expect(path).to eq(new_user_path)

      fill_in "user[name]", with: "New Name"
      fill_in "user[email]", with: "hihello@gmail.com"
      fill_in "user[password]", with: "newpassword"
      click_on "Create User"

      expect(page).to have_content("New Name")
    end
  end
end
