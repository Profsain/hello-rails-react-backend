class Greeting < ApplicationRecord
  # validation
  validates :message, presence: true, length: { maximum: 140 }
end
