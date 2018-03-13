require "application_system_test_case"

class AuthenticationsTest < ApplicationSystemTestCase

  test "should redirect an authenticated user to their show page" do
    # Build a user
    user = users(:david_hasselhoff)

    # Visit the login page
    visit new_session_path

    # Fill the email and password fields with the data from the users fixture
    fill_in 'email', with: 'david@hasselhoff.com'
    fill_in 'password', with: '12345678'

    # Submit the form
    click_on "Log in"

    # Assert the user was redirected to the user_path
    assert_redirected_to user_path(user.id)
    end

end
