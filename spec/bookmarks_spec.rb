require 'bookmarks'

describe 'bookmarks' do
  it 'list all bookmarks' do
    Bookmarks.add(url: 'http://www.ford.com')
    bookmarks = Bookmarks.all
    expect(bookmarks).to eq ['http://www.ford.com']
  end
end
