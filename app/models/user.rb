class User < ApplicationRecord
  has_many :messages
  has_many :room_users
  has_many :rooms, through: :room_users

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  validates :name, presence: true
end