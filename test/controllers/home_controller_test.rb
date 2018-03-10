require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  #1. Test that the page is loaded, and that the links show for a non-authenticated user

  #2. Test that links are not on the page for authenticated users.

  test "should load the landing page and show links for non auth user" do
    get root_path
    assert_select "#register-actions"

  end

  test "sould load the page and make sure links are not shown for auth users" do
    @user = users(:one)
    @user.confirmed_at = Time.now
    @user.save
    login_as(@user)

    get root_path

    assert_select "#register-actions", false
  end

  #test "should redirect an authenticated user to their show page" do
    #:david_hasselhoff is from fixtures
    #david = users(:david_hasselhoff)
    #sign_in comes from include Devise::Test::IntegrationHelpers
    #sign_in david
    #get root_path
    #assert_redirected_to user_path(david.id)
  #end

end
