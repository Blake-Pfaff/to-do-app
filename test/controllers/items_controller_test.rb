require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest

  include Devise::Test::IntegrationHelpers

  test "creating a new item will increase the count of items by 1 " do

      # Create user
      user = users(:david_hasselhoff)

      # Create a item model
      @item = user.items.create(
        :name       => "11111111"
      )

      # Sign in user
      sign_in user

      # Assert that when the GET request happens
      # the current user's favorites count is not the same
      # as when it started the request
      assert_difference 'user.items.count' do
        get "user/items/#{@item.id}"
      end
      assert_response 201
    end


end
