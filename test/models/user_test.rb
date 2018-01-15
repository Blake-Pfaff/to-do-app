require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "should be invalid without an email" do
    users(:one).email = nil
    assert_nil users(:one).email
    assert_equal false, users(:one).valid?
   end

   test "should be invalid without a encrypted password" do
     users(:one).encrypted_password = nil
     assert_nil users(:one).encrypted_password
     assert_equal false, users(:one).valid?
    end
end
