require 'spec_helper'

feature 'Adding spaces'  do
	let!(:user) do
    User.create(name: 'Foo Bar', username: 'foobar', email: 'foo@bar.com',
      password: 'foobar', password_confirmation: 'foobar')
  end

	scenario 'host can add a new space when logged in' do

	end
end