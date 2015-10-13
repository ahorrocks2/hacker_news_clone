require 'rails_helper'

describe "the voting process" do
  it "increases the value of a posts votes when clicked" do
    post = Post.create(:url => 'google.com', :description => 'Google')
    visit posts_path
    click_on '^'
    expect(page).to have_content 'Google'
  end
end
