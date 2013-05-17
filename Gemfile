source 'https://rubygems.org'

# force ruby to be installed in a specific version - dont write it in the same line
ruby '1.9.3'

gem 'sinatra', '1.4.2'                              # the server component
gem 'sinatra-contrib', '1.4.0'                      # the sinatra contributed extensions
gem 'mongo', '1.8.5'                                # mongo-db
gem 'mongoid', '3.1.4'                              # mongo-db orm
gem 'bson_ext', '1.8.6'                             # cpp extensions for mongoid
gem 'activesupport', '3.2.13'                       # the dependency for mongo-db
gem 'thin', '1.5.1'                                 # the executing web server

# gem 'magiconf', '0.1.2'                           # helps to manage environment variables
# as long as this pull request is open use the git repo -> https://github.com/sethvargo/magiconf/pull/3
gem 'magiconf', git: 'https://github.com/SeriousM/magiconf.git', ref: '790036e'

group :development do
  gem "better_errors", '0.8.0'                      # shows errors better
  gem "binding_of_caller", '0.7.1'                  # extension for better_errors
end

group :development, :test do
  gem 'git', '1.2.5'                                # a git gem to interact with git repositories
end