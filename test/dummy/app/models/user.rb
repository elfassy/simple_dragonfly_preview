class User < ActiveRecord::Base
  dragonfly_accessor :avatar

  validates :email, :name, presence: true
end
