class Space < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :bookings
  has_many :reviews
  
  validates :user_id, presence: true 
  
  mount_uploader :photos, PhotoUploader
end
