class Review < ActiveRecord::Base
  belongs_to :space, dependent: :destroy
  belongs_to :user
end
