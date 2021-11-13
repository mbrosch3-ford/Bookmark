require 'bookmarks'

describe 'bookmarks' do
  it 'list all bookmarks' do
    bookmarks = Bookmarks.all
    expect(bookmarks).to eq ['http://www.ford.com', 'http://www.youtube.com']
  end
end