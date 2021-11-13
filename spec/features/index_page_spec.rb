feature 'Index page' do
  scenario 'it shows the list of bookmarks' do
    visit '/'
    expect(page).to have_content 'Bookmarks'
  end
end