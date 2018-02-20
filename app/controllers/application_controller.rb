class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    erb :index
  end

  get '/recipes' do
    @recipes = Post.all
    erb :index
  end

  get '/recipes/new' do
    erb :new
  end

  post '/recipes' do
    @recipes = Post.create(
    :name => params[:name]),
    :ingredients => params[:ingredients]),
    :cook_time => params[:cook_time])
  end



end
