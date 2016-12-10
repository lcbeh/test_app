require 'rails_helper'

RSpec.feature "Create Articles", focus: true do
  scenario "user can create an article" do
    visit '/'
    click_link 'New Article'
    fill_in 'Title', with: 'This is my first blog'
    fill_in 'Body', with: 'It is always hard to write the first blog.'
    click_button 'Create Article'
    expect(page).to have_content('Article successfully created')
    expect(current_path).to eq(articles_path)
  end
end
