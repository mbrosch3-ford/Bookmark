feature 'Index page' do
  scenario 'it shows the list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.ford.com')")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.youtube.com')")
    visit '/'
    expect(page).to have_content 'http://www.ford.com'
    expect(page).to have_content 'http://www.youtube.com'
  end
end
