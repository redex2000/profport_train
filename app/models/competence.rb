# frozen_string_literal: true

class Competence < ApplicationRecord
  validates :title, presence: true

  has_many :terms
  accepts_nested_attributes_for :terms, allow_destroy: true, reject_if: ->(attr) { attr["title"].blank? || attr["definition"].blank? }
end
