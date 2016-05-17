def sign_up
	visit('/users/new')
	expect(page.status_code).to eq 200
	fill_in :name, with: 'Bob Smith'
	fill_in :username, with: 'BobSmith'
	fill_in :email, with: 'bob@aol.com'
	fill_in :password, with: 'password'
  fill_in :password_confirmation, with: "password"
	click_button 'Sign up'
end