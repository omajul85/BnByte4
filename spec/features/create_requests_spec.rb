feature 'Request' do
  before(:each) do
    User.create(
      name: 'Granny Gangster',
      username: 'theG',
      email: 'theg@granny.com',
      password: 'password',
      password_confirmation: 'password'
      )
    sign_in(email: 'theg@granny.com', password: 'password')
    create_space
  end

  scenario 'is created by user' do
    sign_up
    sign_in(email: 'foo@bar.com', password: 'foobar')
    create_request
    expect(page.status_code).to eq(200)
    expect(page).to have_content('You have made a request for Title for the space')
  end

end