require 'data_mapper'
require 'dm-postgres-adapter'

# require_relative './models/'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/makersbnb_#{ENV['RACK_ENV']}")
DataMapper.finalize

if ENV['RACK_ENV'] == 'test'
	DataMapper.auto_migrate!
end