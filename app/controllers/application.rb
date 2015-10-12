# config : utf-8
module Controllers

    class Application < Sinatra::Base
      register Sinatra::MultiRoute
      set :views, File.join(Config::Application::APP_ROOT, 'app', 'views')
      set :public_folder, File.join(Config::Application::APP_ROOT, 'public')
      set :method_override, enable
    end

end

