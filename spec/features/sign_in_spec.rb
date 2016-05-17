feature 'User sign in' do

  let(:user)do
  User.create(name: 'Bob Smith',
    username: 'BobSmith',
    email: 'bob@aol.com',
    password: 'password',
    password_confirmation: 'password')
  end

  scenario 'with correct details' do
    sign_in(email: user.email, password: user.password)
    expect(page).to have_content "Welcome, #{user.name}"
  end

end