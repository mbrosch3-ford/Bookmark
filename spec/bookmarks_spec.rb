require 'bookmarks'

describe 'bookmarks' do
  it 'list all bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.ford.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.youtube.com');")
    bookmarks = Bookmarks.all
    expect(bookmarks).to eq ['http://www.ford.com', 'http://www.youtube.com']
  end
end
