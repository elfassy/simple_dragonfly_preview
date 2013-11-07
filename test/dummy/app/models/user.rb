class User < ActiveRecord::Base
  image_accessor :avatar

  validates :email, :name, presence: true
end
