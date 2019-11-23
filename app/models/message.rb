class Message < ApplicationRecord
  belongs_to :user
  validates :content, length: { maximum: 240 }
end
