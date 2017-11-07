# frozen_string_literal: true
# == Schema Information
#
# Table name: instructions
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


class Instruction < ApplicationRecord
  has_many :skills
  has_many :users, through: :skills
end
