module SessionHelpers

  def sign_up
    visit('/users/new')
    expect(page.status_code).to eq(200)
      fill_in :name, with: "Foo Bar"
      fill_in :username, with: "fooby"
      fill_in :email, with: "foo@bar.com"
      fill_in :password, with: "foobar"
      fill_in :password_confirmation, with: "foobar"
      click_button("Register")
  end

  def sign_in(email: 'foo@bar.com', password: 'foobar')
    visit '/sessions/new'
    fill_in :email, with: email
    fill_in :password, with: password
    click_button 'Log in'
  end

  def create_space(name: 'Title for the space', description: 'Description here',
    price: '£50', available_from: Date.today.to_s, available_to: (Date.today + 1).to_s)
    visit('/spaces/new')
    expect(page.status_code).to eq(200)
    fill_in :name, with: name
    fill_in :description, with: description
    fill_in :price, with: price
    fill_in :available_from, with: available_from
    fill_in :available_to, with: available_to
    click_button('Create space')
  end
end