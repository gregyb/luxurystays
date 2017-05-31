class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :villa, :dependent => :destroy
  validate :start_date
  validate :end_date
end
