require 'rails_helper'

describe "the voting process" do
  it "increases the value of a posts votes when clicked" do
    post = Post.create(:url => 'google.com', :description => 'Google')
    visit post_path(post)
    click_on 'Vote'
    expect(page).to have_content 'Votes: 1'
  end
end
