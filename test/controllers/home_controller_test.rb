require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  #1. Test that the page is loaded, and that the links show for a non-authenticated user

  #2. Test that links are not on the page for authenticated users.

  test "an unauthenticated user is shown login / sign up links" do
    # Visit the root path
    get root_path
    # Assert that the <div> with the ID "register-actions" exists on the page
    assert_select "#register-actions"
  end

  test "an authenticated user is not shown login / sign up links" do
    # :david_hasselhoff is from fixtures
    david = users(:david_hasselhoff)
    # sign_in comes from include Devise::Test::IntegrationHelpers
    sign_in david
    # Visit the root path
    get root_path
    # Verify that the <div> with the ID "register-actions" is not available
    assert_select "#register-actions", false
    end


  test "should redirect an authenticated user to their show page" do
    #:david_hasselhoff is from fixtures
    david = users(:david_hasselhoff)
    get root_path
    #sign_in comes from include Devise::Test::IntegrationHelpers
    sign_in david
    assert_redirected_to user_path(david.id)
  end

end
