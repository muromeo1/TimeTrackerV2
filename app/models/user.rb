class User < ApplicationRecord
  validates :name, presence: true
  validates :lat, presence: true
  validates :long, presence: true
  validates :checkin, presence: true  
end
