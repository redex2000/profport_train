# frozen_string_literal: true
# == Schema Information
#
# Table name: competences
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


class Competence < ApplicationRecord
  validates :title, presence: true

  has_many :terms
  accepts_nested_attributes_for :terms, allow_destroy: true, reject_if: ->(attr) { attr["title"].blank? }
end
