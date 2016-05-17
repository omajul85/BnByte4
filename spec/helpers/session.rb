module SessionHelpers

  def sign_up
    visit('/users/new')
    expect(page.status_code).to eq(200)
      fill_in :name, with: "John Doe"
      fill_in :email, with: "john@doe.com"
      fill_in :username, with: "daDoe"
      fill_in :password, with: "password"
      fill_in :password_confirmation, with: "password"
      click_button("Register")
  end

  def sign_in(email: 'john@doe.com', password: 'password')
    visit '/sessions/new'
    fill_in :email, with: email
    fill_in :password, with: password
    click_button 'Log in'
  end

  def create_space
    visit('/spaces/new')
    expect(page.status_code).to eq(200)
    fill_in :name, with: 'Test'
    fill_in :description, with: 'This is a test space'
    fill_in :price, with: '50'
    fill_in :available_from, with: Date.today.to_s
    fill_in :available_to, with: (Date.today + 1).to_s
    click_button('Create space')
  end

end