# frozen_string_literal: true
# == Schema Information
#
# Table name: terms
#
#  id            :integer          not null, primary key
#  title         :string           not null
#  definition    :text             not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  competence_id :integer
#


class Term < ApplicationRecord
  has_many :concepts
  has_many :users, through: :concepts
  belongs_to :competence
end
