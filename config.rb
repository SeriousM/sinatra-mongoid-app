require 'pathname'

# http://www.sinatrarb.com/configuration.html
# http://recipes.sinatrarb.com/

configure do
  # kick the magiconf setup
  #Magiconf.path = '../config/application.yml'
  Magiconf.setup!

  Mongoid.load!("config/mongoid.yml")

  # set the mongoid logging
  Mongoid.logger.level = Logger::WARN
  Moped.logger.level = Logger::WARN
end

# Better_Errors configuration
configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = File.expand_path("..", __FILE__)
  BetterErrors.editor = :sublime

  BetterErrors.editor = proc { |full_path, line|
    full_path = Pathname.new(full_path).realpath
    "subl://open?url=file://#{full_path}&line=#{line}"
  }
end