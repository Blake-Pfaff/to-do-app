require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test 'show a single user' do
    user = User.create!(email: "test@test.com", password: "fakepw", id: 1)
    get :show, { id: user.id }
    assert_template 'show'
  end
end
