require 'spec_helper'

feature 'Search for spaces'  do
	let!(:user) do
    User.create(name: 'Foo Bar', username: 'foobar', email: 'foo@bar.com',
      password: 'foobar', password_confirmation: 'foobar')
  end

	scenario 'guest can search for existing spaces' do
    	sign_up
    	search_for_a_space
    	#expect(current_path).to eq('/')
    	# expect{ create_space }.to change(Space, :count ).by(1) 
    	# expect(page).to have_content('This is a test space')
	end
end