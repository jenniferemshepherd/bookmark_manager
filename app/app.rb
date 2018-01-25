ENV['RACK_ENV'] ||= "development"
require 'sinatra/base'
require_relative 'data_mapper_setup'

class Bookmark_Manager < Sinatra::Base

  run! if app_file == $0

  get '/' do
    erb(:sign_up)
  end

  post '/signed_up' do
    @user = User.new(email: params[:email],
                password: params[:password])
    $email = @user.email
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb(:links)
  end

  get '/links/new' do
    erb(:add_new_link)
  end

  get '/tags/:tag' do
    @links = Link.all
    @tag = params[:tag]
    erb(:tags)
  end

  post '/links' do
    link = Link.new(url: params[:new_link_url],
                title: params[:new_link_title])
    params[:new_link_tag].split(', ').each { |tag| link.tags << Tag.first_or_create(tag: tag) }
    link.save
    redirect to('/links')
  end

end
