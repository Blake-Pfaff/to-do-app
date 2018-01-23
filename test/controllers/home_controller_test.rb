require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should redirect an unauthenticated user to the sign in page" do
    get root_path
    assert_redirected_to new_user_session_path
  end

  test "should redirect an authenticated user to their show page" do
    #:david_hasselhoff is from fixtures
    david = users(:david_hasselhoff)
    #sign_in comes from include Devise::Test::IntegrationHelpers
    sign_in david
    get root_path
    assert_redirected_to user_path(david.id)
  end

end
