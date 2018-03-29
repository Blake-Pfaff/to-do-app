class Item < ApplicationRecord
  include ActionView::Helpers::DateHelper

  validates_length_of :name, :minimum => 8, :maximum => 100, :allow_blank => false
  belongs_to :user

  def since
    to_time = Time.now - 7.days
    distance_of_time_in_words(self.created_at , to_time)
  end

end
