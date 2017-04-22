class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :fav, class_name: "User"
  
  validates :user_id, presence: true
  validates :fav_id, presence: true
end
