require 'rails_helper'


describe Duel do
  it {should validate_presence_of :name}
  it {should validate_presence_of :character_one_body}
  it {should validate_presence_of :character_two_body}
  it {should validate_presence_of :character_one_name}
  it {should validate_presence_of :character_two_name}

  it {should belong_to :user}
  it {should have_many :comments}

end
