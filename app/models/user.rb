class User < ApplicationRecord
  has_many :skills
  has_many :concepts
  has_many :terms, through: :concepts
  has_many :instructions, through: :skills
end
