require 'rails_helper'

describe "the edit a post process" do
  it "edits a post" do
    post = Post.create(:url => 'google.com', :description => 'Google')
    visit post_path(post)
    click_on 'Edit'
    fill_in 'Url', :with => 'pinterest.com'
    fill_in 'Description', :with => 'Pinterest'
    click_on 'Update Post'
    expect(page).to have_content 'Pinterest'
  end

  it "gives errors when nothing is entered" do
    post = Post.create(:url => 'google.com', :description => 'Google')
    visit post_path(post)
    click_on 'Edit'
    fill_in 'Url', :with => ''
    fill_in 'Description', :with => 'Pinterest'
    click_on 'Update Post'
    expect(page).to have_content 'errors'
  end
end
