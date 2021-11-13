feature 'Index page' do
  scenario 'it shows the list of bookmarks' do
    visit '/'
    expect(page).to have_content 'http://www.ford.com'
    expect(page).to have_content 'http://www.youtube.com'
  end
end
