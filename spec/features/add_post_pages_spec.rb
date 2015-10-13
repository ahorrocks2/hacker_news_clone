require 'rails_helper'

describe "the add post process" do
  it "adds a new post" do
    visit posts_path
    click_on 'Add a Link'
    fill_in 'Url', :with => 'http://www.google.com'
    fill_in 'Description', :with => 'this is google'
    click_on 'Create Post'
    expect(page).to have_content 'this is google'
  end
end
