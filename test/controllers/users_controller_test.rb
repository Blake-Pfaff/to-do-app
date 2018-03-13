require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test 'show a single user' do

    user = User.create!(email: "test@test.com", password: "fakepw", id: 1)

    get root_path

    sign_in user

    assert_template 'show'
  end
end
