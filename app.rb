require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end


  get '/bookmarks' do
    $book_mark_1 = Bookmarks.new
    @bookmark_list = $book_mark_1.create_bookmark("BBC - https://www.bbc.co.uk/news")
    

    erb :bookmarks
  end

  run! if app_file == $0
end