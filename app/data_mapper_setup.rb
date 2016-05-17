require 'data_mapper'
require 'dm-postgres-adapter'

require_relative './models/space'
require_relative './models/user'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://postgres:admin@localhost/makersbnb_#{ENV['RACK_ENV']}")
DataMapper.finalize

if ENV['RACK_ENV'] == 'test'
	DataMapper.auto_migrate!
end