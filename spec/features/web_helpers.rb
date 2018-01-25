def sign_up
  visit '/'
  fill_in :email, with: "ferem@yaoogle.com"
  fill_in :password, with: "bingsoft"
  click_button "Sign up!"
end
