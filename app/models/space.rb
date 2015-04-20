class Space < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :bookings
  has_many :reviews
end
