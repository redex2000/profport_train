class Term < ApplicationRecord
  has_many :concepts
  has_many :users, through: :concepts
end
