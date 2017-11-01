class User < ApplicationRecord
  EMAIL_REGEXP = /\w+@\w+\.\w{2,10}/

  has_many :skills
  has_many :concepts
  has_many :terms, through: :concepts
  has_many :instructions, through: :skills

  validates :email, :password, presence: true
  validates :email, uniqueness: true
  validates :email, format: { with: EMAIL_REGEXP }
  validates :password, length: 6..20
end
