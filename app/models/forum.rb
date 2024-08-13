class Forum < ApplicationRecord
  # add in app/models/forum.rb (inside the class)
  has_many :posts
  has_many :subscriptions
  has_many :users, through: :subscriptions
end
