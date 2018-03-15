require 'test_helper'

class ItemTest < ActiveSupport::TestCase

  test 'valid item' do
    user = users(:david_hasselhoff)
    item = user.items.new(name: '1111111111')
    assert item.valid?
  end

  test 'invalid with less than 8 characters' do
    user = users(:david_hasselhoff)
    item = user.items.new(name: '1234567')
    refute item.valid?
  end

  test 'invalid with more than 100 characters' do

    user = users(:david_hasselhoff)
    item = user.items.new(name: '11111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111')
    refute item.valid?
  end

end
