require 'rails_helper'

describe "destroying a post" do
  it "destroys a post" do
    post = Post.create(:url => 'yahoo.com', :description => 'Yahoo')
    visit post_path(post)
    click_on 'Delete'
    expect(page).to_not have_content 'Yahoo'
  end

end
