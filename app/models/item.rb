class Item < ApplicationRecord
  include ActionView::Helpers::DateHelper

  validates_length_of :name, :minimum => 8, :maximum => 100, :allow_blank => false
  belongs_to :user

  def since
    distance_of_time_in_words(self.created_at, 7.days.from_now)
  end

end
