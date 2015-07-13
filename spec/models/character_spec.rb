require 'rails_helper'

describe Character do
  it {should validate_presence_of :name}
  it {should validate_presence_of :body}
  it {should belong_to :duel}

end
