require 'spec_helper'

feature 'Request a space'  do
	let!(:user) do
    User.create(name: 'Foo Bar', username: 'foobar', email: 'foo@bar.com',
      password: 'foobar', password_confirmation: 'foobar')
  end

	scenario 'user can request a space' do
    	sign_up
      click_button('Start')
      expect(page.status_code).to eq(200)
	end
end