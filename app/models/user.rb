class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :memberships
  has_many :messages
  has_many :meetings
  has_many :groups, through: :memberships
  has_many :membership_requests
  belongs_to :resort, optional: true
  has_one_attached :photo
  has_many :read_messages, dependent: :destroy
end
