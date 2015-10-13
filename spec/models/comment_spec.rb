require 'rails_helper'

describe Comment do
  it {should validate_presence_of :name}
  it {should validate_presence_of :report}
  it {should belong_to :post}
end
