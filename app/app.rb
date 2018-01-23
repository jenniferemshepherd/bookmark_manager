require 'sinatra/base'
require_relative './models/link'

class Bookmark_Manager < Sinatra::Base

  run! if app_file == $0

  # get '/' do
  #   redirect '/links'
  # end

  get '/links' do
    @links = Link.all
    erb(:links)
  end

end
