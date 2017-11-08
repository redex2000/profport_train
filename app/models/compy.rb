class Compy < ApplicationRecord
  belongs_to :user
  belongs_to :competence
  has_many :concepts

  validates :user_id, uniqueness: { scope: :competence_id }
end
