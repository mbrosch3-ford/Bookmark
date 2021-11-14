require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/bookmarks' do
    @bookmarks = $bookmarks
    erb :bookmarks
  end

  get '/bookmarks/add' do
    erb :add_bookmarks
  end

  post '/bookmarks/add' do
    p $bookmarks = params['url']
    redirect '/bookmarks'
  end

  run! if app_file == $PROGRAM_NAME
end