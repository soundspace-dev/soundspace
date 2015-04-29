class Space < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  has_many :bookings
  has_many :reviews
  
  validates :user_id, presence: true 
  
  mount_uploader :photos, PhotoUploader
  mount_uploader :photo2, PhotoUploader
  mount_uploader :photo3, PhotoUploader
  mount_uploader :photo4, PhotoUploader
  mount_uploader :photo5, PhotoUploader
end
