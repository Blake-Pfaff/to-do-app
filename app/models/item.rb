class Item < ApplicationRecord
  validates_length_of :name, :minimum => 8, :maximum => 100, :allow_blank => false
  belongs_to :user
end
