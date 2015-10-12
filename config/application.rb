# coding : utf-8
module Config

  module Application
    # application const
    APP_ROOT = File.expand_path('../../', __FILE__)

    extend self

    ##
    # application cache
    def cache
      ActiveSupport::Cache.lookup_store(:redis_store)
    end

    ##
    # application logger
    def logger
      ENV['RACK_ENV'] == 'production' ? Logger.new(File.expand_path('../../', __FILE__) + '/log/production.log') : Logger.new($stdout)
    end

  end

end
