# frozen_string_literal: true

class Concept < ApplicationRecord
  belongs_to :user
  belongs_to :term

  validates :user_id, uniqueness: { scope: :term_id }
end
