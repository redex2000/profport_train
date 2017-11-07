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


FactoryBot.define do
  factory :concept do
    level 1.5
  end
end
