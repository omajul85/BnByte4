require 'data_mapper'
require 'dm-postgres-adapter'

class Space
  
  include DataMapper::Resource

  # has n, :requests
  belongs_to :user

  property :id, Serial
  property :name, String, required: true
  property :description, String, required: true
  property :price, String, required: true
  property :available_from, Date, required: true
  property :available_to, Date, required: true

end