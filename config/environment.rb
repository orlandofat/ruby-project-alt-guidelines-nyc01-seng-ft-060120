require 'bundler'
Bundler.require

#require 'Faker'


ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')

#ActiveRecord::Base.logger = Logger.new(STDOUT)
ActiveRecord::Base.logger = Logger = nil

require_all 'lib'
