class User < ActiveRecord::Base
  dragonfly_accessor :avatar
  dragonfly_accessor :image

  validates :email, :name, presence: true
end
