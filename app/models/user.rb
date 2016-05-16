require 'data_mapper'
require 'dm-postgres-adapter'
require 'bcrypt'

class User
  include DataMapper::Resource
  include BCrypt

  has n, :spaces
  has n, :requests

  property :id, Serial
  property :name, String, required: true
  property :username, String, required: true, unique: true
  property :email, String, 
                   required: true,
                   unique: true,
                   format: :email_address
  property :password_digest, Text, required: true

  attr_reader :password
  attr_accessor :password_confirmation

  validates_confirmation_of :password

  def password=(password)
    @password = password
    self.password_digest = Password.create(password)
  end

  def self.authenticate(email, password)
    user = first(email: email)
    user && Password.new(user.password_digest).is_password?(password) ? user : nil
  end
end