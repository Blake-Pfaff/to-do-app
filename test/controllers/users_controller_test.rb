require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test 'signed in user can access landing page' do

    user = User.create!(email: "test@test.com", password: "fakepw", id: 1)

    get root_path

    sign_in user

    assert_template 'home/index'
  end
end
