feature 'signing in as user' do

  before do
    visit '/'
    # User.count = 0
    fill_in :email, with: "ferem@yaoogle.com"
    fill_in :password, with: "bingsoft"
    click_button "Sign up!"
  end

  scenario 'user signs up' do
    expect(page).to have_content('Welcome to your bookmarks!  Thanks for signing up with: ferem@yaoogle.com')
  end

  # scenario 'user count increases by 1' do
  #   # expect User.count = 1
  # end
end
