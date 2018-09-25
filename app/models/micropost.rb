class Micropost < ApplicationRecord
  belongs_to :user #this associate already includes validation for user_id
  validates :content, presence: true, length: { maximum: 250 }
  default_scope { order(created_at: :desc) }
end
