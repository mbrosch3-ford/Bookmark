feature 'Bookmarks' do
  scenario 'it shows the list of bookmarks' do
    visit '/bookmarks/add'
    fill_in('url', with: 'http://www.youtube.com')
    click_button('Submit')
    expect(page).to have_content 'http://www.youtube.com'
  end
end
