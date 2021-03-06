class User < ActiveRecord::Base
  attr_accessible :name

  validates :name, presence: true, 
                   uniqueness: true

  has_many :user_comments
  has_many :checkouts, dependent: :destroy
  has_many :assets, through: :checkouts
  has_many :serial_numbers     
end
