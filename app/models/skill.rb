# frozen_string_literal: true
# == Schema Information
#
# Table name: skills
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  instruction_id :integer
#  level          :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#


class Skill < ApplicationRecord
  belongs_to :user
  belongs_to :instruction
end
