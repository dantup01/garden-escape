class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :gardens, dependent: :destroy, inverse_of: 'owner'
  has_many :bookings, dependent: :destroy, inverse_of: 'guest'

  has_one_attached :avatar
end
