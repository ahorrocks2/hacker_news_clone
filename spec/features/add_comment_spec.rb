require 'rails_helper'

describe "the add comment process" do
  it "adds a new comment" do
    post = Post.create(:url => 'google.com', :description => 'Google')
    visit post_path(post)
    click_on 'Add a Comment'
    fill_in 'Name', :with => 'Alyssa'
    fill_in 'Report', :with => 'Super cool!'
    click_on 'Create Comment'
    expect(page).to have_content 'Super cool!'
  end

  it "gives error when fields are not entered" do
    post = Post.create(:url => 'google.com', :description => 'Google')
    visit post_path(post)
    click_on 'Add a Comment'
    fill_in 'Name', :with => 'Alyssa'
    fill_in 'Report', :with => ''
    click_on 'Create Comment'
    expect(page).to have_content 'errors'
  end
end
