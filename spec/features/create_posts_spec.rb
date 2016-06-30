require 'rails_helper.rb'

# visit root route
# click create post link
# fill in the form with needed information (title and caption of job)
# click submit button
# expect page to have the content we submitted

feature 'Creating Post' do
  scenario 'can create job' do
    # visit root route
    visit '/'
    # click create post link
    click_link 'Create Post'
    # fill in the form with needed information (title and caption job)
    fill_in 'Title', with: 'title'
    fill_in 'Caption', with: 'Caption'
    # click submit button
    click_button 'Create Update'
    # expect page to have the content we submitted
    expect(page).to have_content('title')
    expect(page).to have_content('caption')
  end
end