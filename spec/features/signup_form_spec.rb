feature 'signing in as user' do

  scenario 'user signs up' do
    sign_up
    expect(page).to have_content('Welcome to your bookmarks!  Thanks for signing up with: ferem@yaoogle.com')
    expect(User.last.email).to eq('ferem@yaoogle.com')
  end

  scenario 'count increases after sign up' do
    expect { sign_up }.to change(User, :count).by(1)
  end

end
