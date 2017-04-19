class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :user_id, presence: true
  validates :content, oresence: true, length: {maximum: 255 }
end
