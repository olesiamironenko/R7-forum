class User < ApplicationRecord
  validates :skill_level, inclusion: { in: %w(beginner intermediate expert) }

  # add in app/models/user.rb
  has_many :subscriptions
  has_many :posts
  has_many :forums, through: :subscriptions
end
