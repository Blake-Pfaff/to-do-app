require "application_system_test_case"

class AuthenticationsTest < ApplicationSystemTestCase

  test "should redirect an authenticated user to their show page" do
    # Build a user
    user = users(:david_hasselhoff)

    # Visit the login page
    visit new_user_session_path

    # Fill the email and password fields with the data from the users fixture
    fill_in 'user_email', with: user.email
    fill_in 'user_password', with: '12345678'

    # Submit the form
    click_button 'Log in'

    # Assert the the 'User Profile' text is rendered
    assert_selector "h1", text: "User Profile"

    # Assert that the user's email is on the screen
    assert_text user.email

    # Assert that the path is /users/{id}
    assert_current_path user_path(user)
  end

end
