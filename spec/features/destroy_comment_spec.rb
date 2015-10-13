require 'rails_helper'

describe "destroying a comment" do
  it "destroys a comment" do
    post = Post.create(:url => 'yahoo.com', :description => 'Yahoo')
    visit post_path(post)
    click_on 'Add a Comment'
    fill_in 'Name', :with => 'Alyssa'
    fill_in 'Report', :with => 'Super cool!'
    click_on 'Create Comment'
    click_on '[X]'
    expect(page).to_not have_content 'Super cool!'
  end

end
