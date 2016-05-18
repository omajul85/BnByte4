require 'spec_helper'

feature 'Click on space to see it\'s page'  do
	let!(:user) do
    User.create(name: 'Foo Bar', username: 'foobar', email: 'foo@bar.com',
      password: 'foobar', password_confirmation: 'foobar')
  end

	scenario 'user clicks on space to see further details' do
    sign_up
    sign_in
    expect { create_space }.to change(Space, :count).by(1)
    click_link("space_link2")
    expect(page).to have_content('Title for the space')
	end


end