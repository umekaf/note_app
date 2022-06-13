class User < ApplicationRecord
  has_many :notes, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, presence: true
  validates :email, uniqueness: { case_sensitive: false }
  validates :email, format: { with: Devise.email_regexp }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
