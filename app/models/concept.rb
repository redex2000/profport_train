# frozen_string_literal: true
# == Schema Information
#
# Table name: concepts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  term_id    :integer
#  level      :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class Concept < ApplicationRecord
  belongs_to :user
  belongs_to :term
  belongs_to :compy

  validates :user_id, uniqueness: { scope: :term_id }
end
