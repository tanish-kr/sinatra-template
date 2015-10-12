# coding: utf-8
require File.expand_path(File.dirname(__FILE__) + '/boot')

class Routes < Sinatra::Base
  # setting views folder
  set :views, File.join(Config::Application::APP_ROOT, 'app', 'views')
  # setting public folder
  set :public_folder, File.join(Config::Application::APP_ROOT, 'public')

  get '/' do
    erb :index
  end

  # use controller
  # use ::Controllers::Sample

  not_found do
    redirect to('/404.html')
  end
end
