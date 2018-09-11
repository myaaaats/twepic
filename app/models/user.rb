class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 140 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_validation { email.downcase! }
  has_secure_password
  validates :password_digest, presence: true, length: { minimum: 6 }
  has_many :twepics
  has_many :favorites, dependent: :destroy
  has_many :favorite_twepics, through: :favorites, source: :twepic
  mount_uploader :image, ImageUploader
end
