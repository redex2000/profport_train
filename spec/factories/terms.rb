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


FactoryBot.define do
  factory :term do
    title "MyString"
    definition "MyText"
  end
end
