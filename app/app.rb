ENV['RACK_ENV'] ||= "development"
require 'sinatra/base'
require_relative './models/link'

class Bookmark_Manager < Sinatra::Base

  run! if app_file == $0

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb(:links)
  end

  get '/links/new' do
    erb(:add_new_link)
  end

  post '/links' do
    Link.create(url: params[:new_link_url], title: params[:new_link_title])
    @links = Link.all
    erb(:links)
  end

end
