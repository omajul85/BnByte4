require 'spec_helper'

feature 'Adding spaces'  do
	let!(:user) do
    User.create(name: 'Foo Bar', username: 'foobar', email: 'foo@bar.com',
      password: 'foobar', password_confirmation: 'foobar')
  end

	scenario 'host can add a new space when logged in' do
    sign_up
    #expect(current_path).to eq('/')
    expect{ create_space }.to change(Space, :count ).by(1) 
    expect(page).to have_content('This is a test space')
	end
end