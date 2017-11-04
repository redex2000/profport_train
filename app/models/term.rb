# frozen_string_literal: true

class Term < ApplicationRecord
  has_many :concepts
  has_many :users, through: :concepts
  belongs_to :competence
end
