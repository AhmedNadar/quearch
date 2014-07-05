require 'spec_helper'
feature "Sign up as a user" do
  scenario "with an email address" do
    user = FactoryGirl.build(:user)
    visit root_path
    click_link "Create Account"
    
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    fill_in "Password confirmation", with: user.password_confirmation
    click_button "Sign up"
    
    expect(current_path).to eq playlists_path 
    expect(page).to have_css '.welcome',        text: 'Welcome, #{user.email}'
    expect(page).to have_link 'Sign out',       href: destroy_user_session_path
    expect(page).to have_link 'Edit profile',   href: edit_user_registration_path
  end
end
