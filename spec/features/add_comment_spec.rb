require 'rails_helper'

describe 'Adding a Comment on the index' do
  it 'will let the user add comments to a duel' do
    user = FactoryGirl.create(:admin)
    login_as(user, :scope => :user)
    duel = FactoryGirl.create(:duel)
    visit '/'
    fill_in 'Body', with: "yay"
    click_on "Smash!"
    expect(page).to have_content("yay")
  end

  it 'gives error when missing information', js: true do
    user = FactoryGirl.create(:admin)
    login_as(user, :scope => :user)
    duel = FactoryGirl.create(:duel)
    visit '/'
    click_on "Smash!"
    save_and_open_screenshot
    expect(page).to have_content "errors"
  end
end
