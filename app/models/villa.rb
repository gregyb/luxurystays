class Villa < ApplicationRecord

  validates: :title, presence: true
  validates: description:, presence: true
  validates: :city, presence: true
  validates: :price, presence: true


end
