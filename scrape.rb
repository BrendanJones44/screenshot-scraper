require 'webshot'

ws = Webshot::Screenshot.instance

ws.start_session do
  visit 'https://www.what-are-the-odds.com/users/sign_in'
  fill_in 'Email', :with => 'cole@test.com'
  fill_in 'Password', :with => 'password'
  click_button 'Log in'
end.capture 'https://www.what-are-the-odds.com/', 'odds_are.png', height: 1600 , width: 2560
