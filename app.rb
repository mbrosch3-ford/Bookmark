# frozen_string_literal: true

require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @bookmarks = ['http://www.ford.com', 'http://www.youtube.com']
    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
