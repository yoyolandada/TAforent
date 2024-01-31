class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  enum confirmation: { pending: 10, accepted: 20, declined: 30 }
end
