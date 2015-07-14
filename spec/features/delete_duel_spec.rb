require 'rails_helper'

describe 'delete a duel path' do
  it 'deletes the select duel', js: true do
    user = FactoryGirl.create(:admin)
    login_as(user, :scope => :user)
    duel = FactoryGirl.create(:duel)
    visit '/'
    click_on "Delete"
    expect(page).to have_content "Successfully"
  end
end
