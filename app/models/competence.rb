# frozen_string_literal: true

class Competence < ApplicationRecord
  validates :title, presence: true
end
