require 'rails_helper'

describe 'add duel path' do
  it 'can add a duel from main page' do
    user = FactoryGirl.create(:admin)
    login_as(user, :scope => :user)
    visit '/'
    click_on 'Add New Smash'
    fill_in 'Name', with: 'test name'
    fill_in 'Character one name', with: "test 1"
    fill_in 'Character two name', with: "test 2"
    fill_in 'Character one body', with: "test 3"
    fill_in 'Character two body', with: "test 4"
    save_and_open_page
    click_on "Smash!"
    expect(page).to have_content "Successfully"
  end

  it 'gives error when missing information' do
    user = FactoryGirl.create(:admin)
    login_as(user, :scope => :user)
    visit '/'
    click_on 'Add New Smash'
    click_on "Smash!"
    expect(page).to have_content "errors"
  end
end
