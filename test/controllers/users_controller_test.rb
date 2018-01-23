require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'show a single user' do
    user = User.create!(email: "test@test.com", password: "fakepw", id: 1)
    get user_path(user)
    assert_template 'show'
  end
end
